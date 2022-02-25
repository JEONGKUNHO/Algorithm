//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/02/25.
//

import Foundation

let N = Int(readLine()!)!
var arr: [Int] = []
for _ in 0...N-1 {
    let input = Int(readLine()!)!
    arr.append(input)
}

arr.sort(by: >)
var count = 1
var max = 0
for i in arr {
    if i - (count-1) > 0 {
        max += (i - (count-1))
    }
    count += 1
}
print(max)

