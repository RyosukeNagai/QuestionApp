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
    
    var correctCount = 0
    var wrongCount = 0
    var maxScore = 0
    var questionNumber = 0
    
    let imagesList = ImagesList()
    
    //IBActionで検知した正答がどちらなのか取得する変数
    var pickedAnswer = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //画面遷移(モーダルで)戻ってきた時に値を初期化するコード
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        correctCount = 0
        wrongCount = 0
        questionNumber = 0
        
        imageView.image = UIImage(named: imagesList.list[0].imageText)
        
    }

    @IBAction func answer(_ sender: Any) {
        
        if (sender as AnyObject).tag == 1{
            
            pickedAnswer = true
            
             
            // 丸ボタンの音声を流す
            
        }else if (sender as AnyObject).tag == 2{
            
            pickedAnswer = false
            
            // ×ボタンの音声を流す
        }
        
        //チェック回答が合っているか(pickedAnswerとImagesListのcorrectOrNotの値が一致しているかどうか)
        
    }
    
    func check(){
        
        let correctAnswer = imagesList.list[0].answer
        if correctAnswer == pickedAnswer{
            
        }
        
    }
    
}

