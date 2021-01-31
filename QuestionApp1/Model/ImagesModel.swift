//
//  ImagesModel.swift
//  QuestionApp1
//
//  Created by 長井崚介 on 2021/01/31.
//

import Foundation

class ImagesModel{
    
    //画像名を取得して、その画像名が人間かそうで無いかをプラグによって判定するための機能
    
    let imageText:String
    let answer:Bool
    
    init(imageName:String,correctOrNot:Bool){
        
        imageText = imageName
        
        answer = correctOrNot
        
    }
    
    
}
