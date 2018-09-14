//
//  DataLoader.swift
//  OneWord
//
//  Created by AL on 24/06/2018.
//  Copyright © 2018 Alban. All rights reserved.
//

import Foundation
import AVFoundation
import Accelerate

public class DataLoader {
    
    public class func urlForBundleFile(named:String,ofType:String) -> URL? {
        if let filepath = Bundle.main.path(forResource: named, ofType: ofType) {
            
            return URL(fileURLWithPath: filepath)
        }else{
            return nil
        }
    }
    
    class func documentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    class func saveArray<T:FloatingPoint>(_ arrayToSave:[T], to fileName:String, with separator:String = ";") {
        
        let stringToSave = arrayToSave.map{ String(describing: $0) }.joined(separator: separator)
        
        let filePath = documentsDirectory().appendingPathComponent(fileName)
        print(filePath)
        do {
            try stringToSave.write(to: filePath, atomically: true, encoding: String.Encoding.utf8)
        } catch {
            print("Wrong perm")
        }
        
    }
    
    class func loadArrayOf<T:FloatingPoint>(_ type:T.Type, url : URL, sampleRate:Double = 44100) -> [T]? {
        
        do {
            let data = try Data(contentsOf: url)
            
            if let file = try? AVAudioFile(forReading: url){
                let format = AVAudioFormat(commonFormat: .pcmFormatFloat32, sampleRate: Double(sampleRate), channels: 1, interleaved: true)
                
                if let buffer = AVAudioPCMBuffer(pcmFormat: format!, frameCapacity: AVAudioFrameCount(data.count)){
                    if ((try? file.read(into: buffer)) != nil) {
                        
                        let arraySize = Int(buffer.frameLength)
                        
                        switch type {
                        case is Double.Type:
                            let doublePointer = UnsafeMutablePointer<Double>.allocate(capacity: arraySize)
                            vDSP_vspdp(buffer.floatChannelData![0], 1, doublePointer, 1, vDSP_Length(arraySize))
                            return Array(UnsafeBufferPointer(start: doublePointer, count:arraySize)) as? [T]
                        case is Float.Type:
                            return Array(UnsafeBufferPointer(start: buffer.floatChannelData![0], count:arraySize)) as? [T]
                        default: return nil
                        }
                    }
                }
            }
        } catch let error as NSError {
            print("ERROR HERE", error.localizedDescription)
        }
        
        return nil
    }

}
