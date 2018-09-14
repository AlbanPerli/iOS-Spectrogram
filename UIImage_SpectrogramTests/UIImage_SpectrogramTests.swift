//
//  UIImage_SpectrogramTests.swift
//  UIImage_SpectrogramTests
//
//  Created by AL on 24/08/2018.
//  Copyright © 2018 Alban. All rights reserved.
//

import XCTest

class UIImage_SpectrogramTests: XCTestCase {
    
    
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAudioLoadingTypes() {
        let testBundle = Bundle(for: type(of: self))
        if let filePath = testBundle.path(forResource: "bonjour", ofType: "wav") {
            let url = URL(fileURLWithPath: filePath)
            let rawAudioDouble = DataLoader.loadAudioSamplesArrayOf(Double.self, atUrl: url, sampleRate: 44100)
            let rawAudioFloat = DataLoader.loadAudioSamplesArrayOf(Float.self, atUrl: url, sampleRate: 44100)
            
            XCTAssert(rawAudioFloat?.count == rawAudioDouble?.count)
            
            for (d,f) in zip(rawAudioDouble!,rawAudioFloat!) {
                XCTAssert(Float(d.roundToDecimal(4)) == Float(f.roundToDecimal(4)))
            }
            
        }else{
            XCTFail("Missing file in Test Target")
        }
    }
    
    func testFFTtoIFFT() {
        var samples = [Float](repeating: 0.0, count: 8)
        samples[1] = 1.0
        let fftValues = fft(samples)
        let real = fftValues.real
        let img = fftValues.img
        
        let signal = ifft(real, img: img)
        
        let roundedSignal = signal.map{ $0.roundToDecimal(3) }
        
        XCTAssert(roundedSignal == samples)
    }

    func testFFTFromAudio() {
        let testBundle = Bundle(for: type(of: self))
        if let filePath = testBundle.path(forResource: "bonjour", ofType: "wav") {
            let url = URL(fileURLWithPath: filePath)
            let rawAudio = DataLoader.loadAudioSamplesArrayOf(Float.self, atUrl:url)
            XCTAssertNotNil(rawAudio)
            let signalAudio = rawAudio!.chunks(2048)
            let fftValues = signalAudio.map{ fft($0) }
            
            var i = 0
            for fftValue in fftValues {
                let real = fftValue.real
                let img = fftValue.img
                var signal = ifft(real, img: img)
                signal = signal.map{ $0.roundToDecimal(3) }
                let originalSignal = signalAudio[i].map{ $0.roundToDecimal(3) }
                XCTAssert(signal == originalSignal)
                i += 1
            }
            
        }else{
            XCTFail("Missing file in Test Target")
        }
    }
    
    func testFFTFromImage() {
        let testBundle = Bundle(for: type(of: self))
        if let filePath = testBundle.path(forResource: "Avatar", ofType: "png") {
            //let img = Image<Float>(contentsOfFile: filePath)
            //XCTAssertNotNil(img)
            //let image:UIImage = img!.uiImage
            
            let red:RGBA = RGBA<Float>(red: 0.8, green: 0, blue: 0, alpha: 1.0)
            let green:RGBA = RGBA<Float>(red: 0, green: 0.8, blue: 0, alpha: 1.0)
            let image = Image<RGBA<Float>>(width: 8, height: 8, pixels: [
                red,green,green,green,green,green,green,red,
                green,red,red,red,red,red,red,green,
                green,red,red,red,red,red,red,green,
                green,red,red,green,green,red,red,green,
                green,red,red,green,green,red,red,green,
                green,red,red,red,red,red,red,green,
                green,red,red,red,red,red,red,green,
                red,green,green,green,green,green,green,red
                ])
            let m:UIImage = image.uiImage
            
            let pixelsFloat = image.pixels.map{ [$0.red,$0.green,$0.blue,$0.alpha] }.flatMap{ $0 }
            
            let signalImage = pixelsFloat
            let fftValues = fft(signalImage)
            
            var i = 0
            
            let real = fftValues.real
            let img = fftValues.img
            var signal = ifft(real, img: img)
            let chunkedSignal = signal.chunks(4)
            let rgba:[RGBA<Float>] = chunkedSignal.map{ RGBA<Float>(red: $0[0], green: $0[1], blue: $0[2], alpha: $0[3])  }
            
            let rebuildImage = Image<RGBA<Float>>(width: 8, height: 8, pixels: rgba)
            
            let rebuildUIImage:UIImage = rebuildImage.uiImage
            
            print(rebuildUIImage)
            i += 1
            
            
            print(m)

           
            
            /*
                let pixelsAsSignal = image?.pixelsArray()
                
                let signalImage = pixelsAsSignal!.pixelValues.chunks(2048)
                let fftValues = signalImage.map{ fft($0) }
                
                var i = 0
                for fftValue in fftValues {
                    let real = fftValue.real
                    let img = fftValue.img
                    var signal = ifft(real, img: img)
                    signal = signal.map{ $0.roundToDecimal(3) }
                    let originalSignal = signalImage[i].map{ $0.roundToDecimal(3) }
                    XCTAssert(signal == originalSignal)
                    i += 1
                }
                */
            
        }else{
            XCTFail("Missing file in Test Target")
        }
    }
    
    func testSpectro() {
        let testBundle = Bundle(for: type(of: self))
        if let filePath = testBundle.path(forResource: "bonjour", ofType: "wav") {
            let url = URL(fileURLWithPath: filePath)
            var rawAudio = DataLoader.loadAudioSamplesArrayOf(Float.self, atUrl: url, sampleRate: 44100)
            rawAudio = Array(rawAudio![0..<2097152])
            rawAudio = applyWindow(rawAudio!)
            let v = fft(rawAudio!).real
            
            XCTAssertNotNil(rawAudio)
            let magnitudes = spectrogramValuesForSignal(input: rawAudio!, chunkSize: 1024)
            print(magnitudes.count)
            let image = ImageUtils.drawSpectrogram(magnitudes: magnitudes,sampleRate: 44100, width: 640, height: 480)
            
            print(image)
        }else{
            XCTFail("Missing file in Test Target")
        }
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
