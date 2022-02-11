//
//  ViewController.swift
//  NumberGuessGame
//
//  Created by Furkan Erzurumlu on 2.02.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var numberToGuess: UITextField!
    @IBOutlet weak var imgSave: UIImageView!
    @IBOutlet weak var btnSave: UIButton!
    @IBOutlet weak var numberToInput: UITextField!
    @IBOutlet weak var imgGuessStatus: UIImageView!
    @IBOutlet weak var btnTryIt: UIButton!
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var imgStar1: UIImageView!
    @IBOutlet weak var imgStar2: UIImageView!
    @IBOutlet weak var imgStar3: UIImageView!
    @IBOutlet weak var imgStar4: UIImageView!
    @IBOutlet weak var imgStar5: UIImageView!
    
    var stars : [UIImageView] = [UIImageView]()
    let maxGuess : Int = 5
    var nowGuess : Int = 0
    var targetNumber : Int = -1
    var gameSuccess : Bool = false
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stars = [imgStar1, imgStar2, imgStar3, imgStar4, imgStar5]
        
        imgSave.isHidden = true
        imgGuessStatus.isHidden = true
        btnTryIt.isEnabled = false
        numberToGuess.isSecureTextEntry = true
        lblResult.text = ""

    }

    @IBAction func btnSaveClicked(_ sender: UIButton) {
        imgSave.isHidden = false
        
        if let t = Int(numberToGuess.text!){
            targetNumber = t
            btnTryIt.isEnabled = true
            numberToGuess.isEnabled = false
            btnSave.isEnabled = false
            
            imgSave.image = UIImage(named: "onay")
        }else{
            imgSave.image = UIImage(named: "hata")
        }
        
    }
    @IBAction func btnTryItClicked(_ sender: Any) {
        if gameSuccess == true || nowGuess > maxGuess{
            return
        }
        imgGuessStatus.isHidden = false
        
        if let numberInput = Int(numberToInput.text!){
            nowGuess += 1
            stars[nowGuess-1].image = UIImage(named: "blackStar")
            if numberInput > targetNumber {
                imgGuessStatus.image = UIImage(named: "downArrow")
                numberToInput.backgroundColor = UIColor.red
            }else if numberInput < targetNumber{
                imgGuessStatus.image = UIImage(named: "upArrow")
                numberToInput.backgroundColor = UIColor.red
            }else {
                imgGuessStatus.image = UIImage(named: "okey")
                btnSave.isEnabled = true
                lblResult.text = "Successful Guess !"
                numberToInput.backgroundColor = UIColor.green
                numberToGuess.isSecureTextEntry = false
                gameSuccess = true
                
                let alertController = UIAlertController(title: "Successful", message: "Successful Guess! \n Well Done!", preferredStyle: UIAlertController.Style.alert)
                
                let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                
               
                
                let playAgainAction = UIAlertAction(title: "Try Again !", style: UIAlertAction.Style.default, handler: nil)
                alertController.addAction(okAction)
                alertController.addAction(playAgainAction)
                
                present(alertController, animated: true, completion: nil)
                
                return
            }
            
        }else{
            imgGuessStatus.image = UIImage(named: "hata")
        }
        
        if nowGuess == maxGuess {
            btnTryIt.isEnabled = false
            imgGuessStatus.image = UIImage(named: "hata")
            lblResult.text = "Game Over \n Target Number : \(targetNumber)"
            numberToGuess.isSecureTextEntry = false
            
            var alertController = UIAlertController(title: "Sorry :(", message: "Your Guess is Over.\n Target Number : \(targetNumber)", preferredStyle: UIAlertController.Style.alert)
            var action = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alertController.addAction(action)
            present(alertController, animated: true, completion: nil)
            
            return
        }
    }
    
}

