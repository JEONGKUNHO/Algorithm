//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/02/09.
//

import Foundation

let NM = readLine()!.split(separator: " ").map { Int($0)! }
let N = NM[0]
let K = NM[1]
var arr: [Int] = []
for _ in 0...N-1 {
    let input = Int(readLine()!)!
    arr.append(input)
}
var value = 0
var answer = 0
arr.sort(by: >)
var index = 0
while true {
    value += arr[index]
    if value > K {
        value -= arr[index]
        index += 1
    } else {
        answer += 1
    }
    if value == K {
        break
    }
}
print(answer)
