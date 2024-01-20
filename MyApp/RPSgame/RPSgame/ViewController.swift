//
//  ViewController.swift
//  RPSgame
//
//  Created by JUNSU PARK on 1/17/24.
//

import UIKit

class ViewController: UIViewController {
    
    // 변수 // 속성
    @IBOutlet weak var mainLabe: UILabel!
    
    @IBOutlet weak var comImageView: UIImageView!
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var comChoiceLabel: UILabel!
    @IBOutlet weak var myChoiceLabel: UILabel!
    
    var comChoice: Rps = Rps(rawValue: Int.random(in: 0...2))! //컴퓨터선택 초기 설정
    var myChoice: Rps = Rps.rock // 묵으로 초기값 설정
    
    // 함수 // 메서드
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 첫번째/두번째 이미지뷰에 준비(묵) 이미지를 띄워야 함
        comImageView.image = #imageLiteral(resourceName: "ready")
        myImageView.image = UIImage(named: "ready.png")
        // 첫번째/두번째 레이블에 "준비"라고 문자열을 띄워야 함
        comChoiceLabel.text = "Ready"
        myChoiceLabel.text = "Ready"
    }
    
    @IBAction func rpsButtonTapped(_ sender: UIButton) {
        // 가위/바위/보 (enum)를 선택해서 그 정보를 저장해야 됨
        
        //버튼의 문자를 가져옴
        // let title  = sender.currentTitle!
        guard let title = sender.currentTitle else {return}
        
        switch title {
        case "가위":
            // 가위 열거형을 만들어서 저장
            myChoice = Rps.scissors
        case "바위":
            // 바위 열거형을 만들어서 저장
            myChoice = Rps.rock
        case "보":
            // 보 열거형을 만들어서 저장
            myChoice = Rps.paper
        default:
            break
        }
        
        
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        // 1) 컴퓨터가 랜덤 선택한 것을 이미지뷰에 표시
        // 2) 컴퓨터가 랜덤 선택한 것을 레이블에 표시
        switch comChoice {
        case Rps.rock:
            comImageView.image = #imageLiteral(resourceName: "rock")
            comChoiceLabel.text = "바위"
        case Rps.paper:
            comImageView.image = #imageLiteral(resourceName: "paper")
            comChoiceLabel.text = "보"
        case Rps.scissors:
            comImageView.image = UIImage(named: "scissors.png")
            comChoiceLabel.text = "가위"
        }
        
        // 3) 내가 선택한 것을 이미지뷰에 표시
        // 4) 내가 선택한 것을 레이블에 표시
        switch myChoice {
        case .rock:
            myImageView.image = UIImage(named: "rock.png")
            myChoiceLabel.text = "바위"
        case .paper:
            myImageView.image = UIImage(named: "paper.png")
            myChoiceLabel.text = "보"
        case .scissors:
            myImageView.image = UIImage(named: "scissors.png")
            myChoiceLabel.text = "가위"
        }
        
        // 5) 컴퓨터가 선택한 것과 내가 선택한 것을 비교해서 이겼는지/졌는지 판단 / 표시
        if comChoice == myChoice {
            mainLabe.text = "비겼다"
        } else if comChoice == Rps.rock && myChoice == Rps.scissors{
            mainLabe.text = "이겼다"
        }  else if comChoice == Rps.paper && myChoice == Rps.rock{
            mainLabe.text = "이겼다"
        }  else if comChoice == Rps.scissors && myChoice == Rps.paper{
            mainLabe.text = "이겼다"
        } else {
            mainLabe.text = "졌다"
        }
        
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 1) 컴퓨터가 다시 준비를 이미지뷰에 표시
        // 2) 컴퓨터가 다시 준비를 레이블에 표시
        comImageView.image = #imageLiteral(resourceName: "ready")
        comChoiceLabel.text = "Ready"
         
        // 3) 내 선택 이미지뷰에도 준비를 이미지뷰에 표시
        // 4) 내 선택 레이블에도 준비를레이블에 표시
        myImageView.image = UIImage(named: "ready.png")
        myChoiceLabel.text = "Ready"

        // 5) 메인 레이블 "선택하세요" 표시
        mainLabe.text = "선택하세요"
        
        // 6) 컴퓨터가 다시 랜덤 가위/바위/보를 선택하고 저장.
        comChoice = Rps(rawValue: Int.random(in: 0...2))!
    }
    
}

