//
//  main.swift
//  RandomBingo
//
//  Created by JUNSU PARK on 1/18/24.
//

import Foundation

var computerChoice: Int = Int.random(in: 1...100)
var myChoice: Int = 0

while true {
    var userInput = readLine()
    if let input = userInput { // userInput -> 옵셔널 스트링
        if let a = Int(input) { // input -> 옵셔널 정수형
            myChoice = a
        }
    }
    
    
    if computerChoice > myChoice {
        print("UP")
    } else if computerChoice < myChoice {
        print("DOWN")
    } else {
        print("BINGO")
        break // 반복문을 종료
    }
}

