//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/02/07.
//

import Foundation

let N = Int(readLine()!)!
var arr: [Int] = []
for _ in 0...N-1 {
    let input = Int(readLine()!)!
    arr.append(input)
}
arr.sort(by: >)

var minusValue = 0
for i in 0...arr.count-1 {
    if i % 3 == 2 {
        minusValue += arr[i]
    }
}

print(arr.reduce(0, +) - minusValue)
