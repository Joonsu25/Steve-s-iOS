//
//  ViewController.swift
//  MyFirstApp
//
//  Created by JUNSU PARK on 1/15/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    
    // 앱의 화면에 들어오면 처음 실행시키는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        // mainLabel.text = "EEOS가 씹히고 이 문자가 들어감"
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
     
        mainLabel.text = "Welcome to EEOS"
        mainLabel.textColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        
        mainLabel.backgroundColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
        //mainLabel.backgroundColor = UIColor.green
        
        mainLabel.textAlignment = NSTextAlignment.right
        
        myButton.backgroundColor = .gray
        myButton.setTitleColor(.red, for: UIControl.State.normal)
        
    }
}

