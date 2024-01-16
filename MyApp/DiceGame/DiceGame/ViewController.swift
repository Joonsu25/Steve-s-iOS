//
//  ViewController.swift
//  DiceGame
//
//  Created by JUNSU PARK on 1/16/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstDiceImage: UIImageView!
    @IBOutlet weak var secondDiceImage: UIImageView!
    
    var diceImage: [UIImage] = [#imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4") , #imageLiteral(resourceName: "black5") , #imageLiteral(resourceName: "black6")]
    
    // 앱의 화면에 들어오면 가장 먼저 실행되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        firstDiceImage.image = diceImage[0]
        secondDiceImage.image = diceImage[0]
    }
    
    @IBAction func rollButtonTapped(_ sender: UIButton) {
        // 첫번째 이미지뷰의 이미지를 랜덤으로 변경
        firstDiceImage.image = diceImage.randomElement()
        
        // 두번째 이미지뷰의 이미지를 랜덤으로 변경
        secondDiceImage.image = diceImage.randomElement()
    }
    

}

