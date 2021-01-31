//
//  ViewController.swift
//  QuestionApp1
//
//  Created by 長井崚介 on 2021/01/28.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var maxScoreLabel: UILabel!
    
    let imagesList = ImagesList()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    @IBAction func answer(_ sender: Any) {
        
        if (sender as AnyObject).tag == 1{
            
            //丸ボタンが押された時
            
            //ユーザーが押したボタンが丸ボタンだった
            
            // 丸ボタンの音声を流す
            
        }else if (sender as AnyObject).tag == 2{
            
            //×ボタンが押された時
            
            //ユーザーが押したボタンが罰ボタンだった
            
            // 罰ボタンの音声を流す
        }
        
    }
    
    
    
    
}

