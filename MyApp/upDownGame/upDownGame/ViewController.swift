//
//  ViewController.swift
//  upDownGame
//
//  Created by JUNSU PARK on 1/18/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    //컴퓨터가 랜덤으로 숫자 선택
    var comNumber = Int.random(in: 1...10)
    // 내가 선택한 숫자 (선택사항)
    //var myNumber = 1
    
    // 앱의 화면에 들어오면 가장 처음에 실행되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1) 메인 레이블에 "선택하세요"
        mainLabel.text = "선택하세요"
        // 2) 넘버 레이블에 ""
        numberLabel.text = ""
        
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        // 1) 버튼의 숫자를 가져와야 함.
        guard let numString = sender.currentTitle else{return}
        // 2) 넘버 레이블이 변하도록 해야 함.
        numberLabel.text = numString
        // 3) 선택한 숫자를 변수에 저장 (선택사항) ; 문자열 --> 숫자로 변환한다음 저장.
        // guard let num = Int(numString) else {return}
        // myNumber = num
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        
        // 또 다른 방법 제시 : 숫자레이블에 있는 문자열 가져오기 (옵셔널 벗기기)
        guard let myNumString = numberLabel.text else {return}
        guard let myNumber = Int(myNumString) else {return}
        
        // 1) 컴퓨터 숫자와 내 숫자를 비교 메인 레이블에 Bingo, Up, Down 표시
        if comNumber > myNumber {
            mainLabel.text = "UP"
        } else if comNumber < myNumber {
            mainLabel.text = "DOWN"
        } else {
            mainLabel.text = "🥕🥕Bingo🥕🥕"
        }
        
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 1) 메인 레이블에 "선택하세요"
        mainLabel.text = "선택하세요"
        // 2) 컴퓨터가 다시 랜덤숫자를 선택하게
        comNumber = Int.random(in: 1...10)
        // 3) 넘버 레이블에 ""
        numberLabel.text = ""
    }
}

