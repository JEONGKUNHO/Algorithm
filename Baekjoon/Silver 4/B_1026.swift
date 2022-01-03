//
//  main.swift
//  codingTest
//
//  Created by 정건호 on 2021/01/03.
//

import Foundation

let N = Int(readLine()!)!
var A: [Int] = []
var B: [Int] = []

A = readLine()!.split(separator: " ").map { Int($0)! }
B = readLine()!.split(separator: " ").map { Int($0)! }

A.sort(by: <)
B.sort(by: >)

var answer = 0
for i in 0...N-1 {
    answer += A[i] * B[i]
}
print(answer)
