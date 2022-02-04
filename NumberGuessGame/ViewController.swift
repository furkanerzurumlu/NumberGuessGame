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
    var nowGuess : Int = -1
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
    }
    
}

