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


    }

    @IBAction func btnSaveClicked(_ sender: UIButton) {
    }
    @IBAction func btnTryItClicked(_ sender: Any) {
    }
    
}

