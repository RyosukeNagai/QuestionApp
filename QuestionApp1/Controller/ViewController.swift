//
//  ViewController.swift
//  QuestionApp1
//
//  Created by 長井崚介 on 2021/01/28.
//

import UIKit

class ViewController: UIViewController,NowScoreDelegate {
    
    
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var maxScoreLabel: UILabel!
    
    var correctCount = 0
    var wrongCount = 0
    var maxScore = 0
    var questionNumber = 0
    
    let imagesList = ImagesList()
    
    //IBActionで検知した正答がどちらなのか取得する変数
    var pickedAnswer = false
    
    var soundFile = SoundFile()
    
    var changeColor = ChangeColor()
    
    var gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gradientLayer = changeColor.changeColor(topR: 0.98, topG: 0.78, topB: 0.60, topAlpha: 1.0, bottomtR: 1.0, bottomtG: 0.60, bottomtB: 0.70, bottomtAlpha: 1.0)
        gradientLayer.frame = view.bounds
        
        view.layer.insertSublayer(gradientLayer, at: 0)
        
        imageView.layer.cornerRadius = 20.0
    }
    
    //画面遷移(モーダルで)戻ってきた時に値を初期化するコード
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        correctCount = 0
        wrongCount = 0
        questionNumber = 0
        
        imageView.image = UIImage(named: imagesList.list[0].imageText)
        
        if UserDefaults.standard.object(forKey: "beforeCount") != nil{
            
            maxScore = UserDefaults.standard.object(forKey: "beforeCount") as! Int
            
        }
        
        maxScoreLabel.text = String(maxScore)
        
        
    }

    @IBAction func answer(_ sender: Any) {
        
        if (sender as AnyObject).tag == 1{
            
            // 丸ボタンの音声を流す
            soundFile.playSound(fileName: "maruSound", extensionName: "mp3")
            
            pickedAnswer = true
            
            // ×ボタンの音声を流す
        }else if (sender as AnyObject).tag == 2{
            
            soundFile.playSound(fileName: "batsuSound", extensionName: "mp3")
            
            pickedAnswer = false
            
        }
        
        //チェック回答が合っているか(pickedAnswerとImagesListのcorrectOrNotの値が一致しているかどうか)
        check()
        nextQuestions()
        
    }
    
    func check(){
        
        let correctAnswer = imagesList.list[questionNumber].answer
        if correctAnswer == pickedAnswer{
            
            print("正解")
            correctCount = correctCount + 1
            
        }else{
            print("間違い")
            wrongCount = wrongCount + 1
        }
        
    }
    
    func nextQuestions(){
        
        if questionNumber <= 11{
            
            questionNumber = questionNumber + 1
            imageView.image = UIImage(named:imagesList.list[questionNumber].imageText)
            
        }else{
            
            print("問題終了")
            //画面遷移
            performSegue(withIdentifier: "next", sender: nil)
            
        }
        
    }
    
    func nowScore(score: Int) {
        
        soundFile.playSound(fileName: "sound", extensionName: "mp3")
        maxScoreLabel.text = String(score)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "next"{
            let nextVC = segue.destination as! NextViewController
            nextVC.correctedCount = correctCount
            nextVC.wrongCount = wrongCount
            nextVC.delegate = self
        }
        
    }

}
 
