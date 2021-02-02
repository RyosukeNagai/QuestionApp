//
//  ImagesList.swift
//  QuestionApp1
//
//  Created by 長井崚介 on 2021/01/31.
//

import Foundation

class ImagesList{
    
    var list = [ImagesModel]()
    
    init(){
        
        list.append(ImagesModel(imageName: "0", correctOrNot: true))
        list.append(ImagesModel(imageName: "1", correctOrNot: true))
        list.append(ImagesModel(imageName: "2", correctOrNot: false))
        list.append(ImagesModel(imageName: "3", correctOrNot: true))
        list.append(ImagesModel(imageName: "4", correctOrNot: true))
        list.append(ImagesModel(imageName: "5", correctOrNot: false))
        list.append(ImagesModel(imageName: "6", correctOrNot: true))
        list.append(ImagesModel(imageName: "7", correctOrNot: true))
        list.append(ImagesModel(imageName: "8", correctOrNot: true))
        list.append(ImagesModel(imageName: "9", correctOrNot: false))
        list.append(ImagesModel(imageName: "10", correctOrNot: false))
        list.append(ImagesModel(imageName: "11", correctOrNot: true))
        list.append(ImagesModel(imageName: "12", correctOrNot: true))
        
    }
    
}
