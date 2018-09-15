//: Playground - noun: a place where people can play

import UIKit
import UIImage_Spectrogram

let acqCtx = AcquisitionContext(fftSize: 1024, sampleRate: 8000)
acqCtx.frequencyStepForIndex(1)

if let filePath = Bundle.main.url(forResource: "toujours", withExtension: "wav") {
    
    if let rawAudio = DataLoader.loadAudioSamplesArrayOf(Float.self, atUrl: filePath){
        rawAudio.map{ $0 }
        
        let audioChunks = rawAudio.chunks(acqCtx.fftSize)
        
        
    }
    
}
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


