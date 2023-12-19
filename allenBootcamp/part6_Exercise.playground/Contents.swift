import UIKit

// 구구단 출력해보기
for i in 2...9{
    for j in 1...9{
        print("\(i) X \(j) = \(i * j)")
    }
}

// 배수 구해서 출력해보기

    // case 1
for i in 1...100{
    if i % 3 == 0 {
        print("3의 배수 발견: \(i)")
    }
}

    // case 2 (가독성이 높아지는 구현)
for i in 1...100 {
    if i % 3 != 0 {   // 조건을 만족하지 못했을 때 다음으로 넘어감
        continue
    }
    print("3의 배수 발견: \(i)")
}

    // case 3
var range =  stride(from: 3, through: 100, by: 3)
for i in range{
    print("3의 배수 발견: \(i)")
}

// 반복문 활용, 논리를 구성하여 출력해보기
for i in (1...5).reversed() {
    for j in 1...5 {
        if j <= i {
            print("🎄", terminator: "")
        }
    }
    print("\n")
}
        
