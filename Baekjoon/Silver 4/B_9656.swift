//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/02/06.
//

var N = Int(readLine()!)!
var turnCount = 0 // 홀수 상근, 짝수 찬영
while true {
    if N % 2 == 0 && N >= 4 {
        N = N - 3
    } else if N % 2 == 0 && N < 4 {
        N = N - 1
    } else {
        N = N - 1
    }
    turnCount += 1
    
    if N == 0 {
        break
    }
}
if turnCount % 2 == 0 {
    print("SK")
} else {
    print("CY")
}
