//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/02/14.
//

import Foundation

let N = Int(readLine()!)!

var arr = readLine()!.split(separator: " ").map { Int($0)! }

arr.sort(by: <)
var answer = 0
var sum = 0
for i in arr {
    sum += i
    answer += sum
}
print(answer)
