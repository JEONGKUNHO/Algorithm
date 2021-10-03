//
//  main.swift
//  codingTest
//
//  Created by 정건호 on 2021/10/03.
//

import Foundation

var input : [Int] = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let A = input[0]
let B = input[1]
let N = input[2]

var result = A%B

for i in 0...N-1 {
    if i == N-1 {
        break
    }
    result *= 10
    result %= B
}
result *= 10
print(result/B)
