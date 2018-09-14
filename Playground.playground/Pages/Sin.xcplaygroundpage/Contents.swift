//: [Previous](@previous)

import Foundation
import UIImage_Spectrogram

let sineArraySize = 1024 * 1
let frequency1:Float = 1.0
let phase1:Float = 1.0
let amplitude1:Float = 6.0
let sineWave = (0..<sineArraySize).map {
    amplitude1 * sin(2.0 * Float.pi / Float(sineArraySize) * Float($0) * frequency1 + phase1)
}
let fftValues = fft(sineWave)
fftValues.real.map{ $0 }
fftValues.img.map{ $0 }



let analogicFromSignal = ifft(fftValues.real, img: fftValues.img)
analogicFromSignal.map{ $0 }
//: [Next](@next)
