//: Playground - noun: a place where people can play

import UIKit
import UIImage_Spectrogram

let acqCtx = AcquisitionContext(fftSize: 1024, sampleRate: 8000)

acqCtx.frequencyStepForIndex(1)


func loadArrayOf<T:FloatingPoint>(_ type:T.Type,from fileName:String, ofType:String, fromBundle:Bool = false) -> [T]? {
    var filePath:URL? = nil
    if fromBundle {
        filePath = DataLoader.documentsDirectory().appendingPathComponent(fileName)
    }else{
        filePath = DataLoader.urlForBundleFile(named: fileName, ofType: ofType)
    }
    
    if let path = filePath {
        if let str = try? String(contentsOf: path, encoding: String.Encoding.utf8){
            let comp = str.components(separatedBy: ";")
            
            print(type)
            
            switch type {
            case is Double.Type:
                return comp.map{ Double($0) } as? [T]
            case is Float.Type:
                return comp.map{ Float($0) } as? [T]
            default: print("NoType"); break
            }
            
        }
    }
    return nil
}

if let filePath = Bundle.main.url(forResource: "toujours", withExtension: "wav") {
    
    
    let rawAudio = loadArrayOf(Float.self, from: "toujours", ofType: "wav", fromBundle:true)
    
    /*
    let infos = acqCtx.durationInfosForSamples(rawAudio!)
    
    let signalAudio = rawAudio!.chunks(acqCtx.fftSize)
    let fftValues = signalAudio.map{ fft($0) }

    let realValues = fftValues.map{ Array($0.real[0..<$0.real.count/2]) }

    for i in 0..<acqCtx.fftSize {
        acqCtx.frequencyStepForIndex(i)
    }
    
    let img = ImageUtils.drawMagnitudes(magnitudes: realValues, width: 640, height: 480)
    var image = Image<Float>(uiImage: img!)
   
    let magnitudes = spectrogramValuesForSignal(input: rawAudio!, chunkSize: 512)
    let image2 = ImageUtils.drawMagnitudes(magnitudes: magnitudes, width: 640, height: 480)
     */
    
}

