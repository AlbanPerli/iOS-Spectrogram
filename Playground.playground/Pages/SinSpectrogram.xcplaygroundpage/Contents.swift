//: [Previous](@previous)

import Foundation
import UIImage_Spectrogram

let sineArraySize = 1024 * 20

let frequency1:Float = 10.0
let phase1:Float = 1.0
let amplitude1:Float = 6.0

let sineWave = (0..<sineArraySize).map {
    amplitude1 * sin(2.0 * Float.pi / Float(sineArraySize) * Float($0) * frequency1 + phase1)
}

let chunkedSamples = sineWave.chunks(1024)
chunkedSamples.count

let fftValues = chunkedSamples.map{ fft($0) }
fftValues.map{
    $0.real.map{
        $0
    }
}

let realValues = fftValues.map{ $0.real }
let img = ImageUtils.drawMagnitudes(magnitudes: realValues, width: 640, height: 480)




//: [Next](@next)
