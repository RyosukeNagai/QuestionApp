//
//  WithOutMP3.swift
//  QuestionApp1
//
//  Created by 長井崚介 on 2021/02/02.
//

import Foundation

class WithOutMP3: SoundFile {
    
    override func playSound(fileName: String, extensionName: String) {
        
        if extensionName == "mp3"{
            
            print("このファイルは再生できません")
            
        }
        player?.stop()
    }
    
}
