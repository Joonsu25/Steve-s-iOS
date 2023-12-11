# Steve's iOS Study

## TIL : [Swift 문법 마스터 스쿨](https://www.inflearn.com/course/%EC%8A%A4%EC%9C%84%ED%94%84%ED%8A%B8-%EB%AC%B8%EB%B2%95-%EB%A7%88%EC%8A%A4%ED%84%B0-%EC%8A%A4%EC%BF%A8/dashboard)
### 12월 11일 월요일
Part3. 프로그래밍의 기본 원리와 조건문 (Control Flow)
- 프로그래밍의 기본원리와 if 조건문
- 조건문 (switch문)
- switch문의 활용
- 연습문제 / 가위바위보 게임 만들기 / 랜덤 빙고 게임 만들기


###  [Half-Open Range Operator](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/basicoperators#Half-Open-Range-Operator)
The half-open range operator
    (a..<b) defines a range that runs from a to b, but doesn’t include b. It’s said to be half-open because it contains its first value, but not its final value. As with the closed range operator, the value of a must not be greater than b. If the value of a is equal to b, then the resulting range will be empty.  
Half-open ranges are particularly useful when you work with zero-based lists such as arrays, where it’s useful to count up to (but not including) the length of the list:




### 12월 8일 금요일
Part2. 기본연산자 (Basic Opeartor)
- 복합할당 / 비교 / 논리 연산자 / 연산의 우선순위 / 접근 연산자

### 12월 7일 목요일
Part1. 변수와 상수 / 데이터 타입 (The Basics)
- 프로그래밍 관련 용어 정리

Part2. 기본연산자 (Basic Operators)
- 기본 연산자

### 12월 5일 화요일
> 스위프트는 문법에 대해 높은 이해도를 요하는 언어이다.
Part1. 변수와 상수 / 데이터 타입 (The Basics)
- 변수와 상수 정리
- Swift의 데이터 타입
- 타입 주석 / 타입 추론 / 타입 안정성 / 타입 변환
- 타입 애일리어스 / 경고와 오류

- Type Annotation & Type Interface
    
    ```swift
    // Annotation 명시적 선언.
    var value:Int = 4
    
    // Interface 컴파일러가 타입을 추론.
    var value = 4
    ```
    
- 스위프트는 데이터 타입을 명확하게 구분하여 사용하는 언어이다.


### 12월 4일 월요일
Part1. 변수와 상수 / 데이터 타입 (The Basics)
- 변수와 상수




