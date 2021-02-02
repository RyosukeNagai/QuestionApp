//
//  ChageColor.swift
//  QuestionApp1
//
//  Created by 長井崚介 on 2021/02/02.
//

import Foundation
import UIKit

class ChangeColor{
    
    func changeColor(topR:CGFloat,topG:CGFloat,topB:CGFloat,topAlpha:CGFloat,bottomtR:CGFloat,bottomtG:CGFloat,bottomtB:CGFloat,bottomtAlpha:CGFloat)->CAGradientLayer{
        
        //グラデーションの開始色
        let topColor = UIColor(red: topR, green: topG, blue: topB, alpha: topAlpha)
        
        //グラデーションの開始色
        let bottomColor = UIColor(red: bottomtR, green: bottomtG, blue: bottomtB, alpha: bottomtAlpha)
        
        //グラデーションの色を配列で管理します
        let gradientColor = [topColor.cgColor,bottomColor.cgColor]
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColor
        
        return gradientLayer
        
    }
}
