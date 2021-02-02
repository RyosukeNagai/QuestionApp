//
//  SoundFile.swift
//  QuestionApp1
//
//  Created by 長井崚介 on 2021/02/02.
//

import Foundation
import AVFoundation

class SoundFile{
    
    var player:AVAudioPlayer?
    
    func playSound(fileName:String,extensionName:String){
        
        //再生する
        let soundURL = Bundle.main.url(forResource: fileName, withExtension: extensionName )
        
        do {
            
         //効果音を鳴らす
            player = try AVAudioPlayer(contentsOf: soundURL!)
            player?.play()
        } catch  {
            
            print("エラーです！！")
            
        }
        
    }
    
}
