//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2024/02/02.
//

import Foundation

let N = Int(readLine()!)!
var input = Array(readLine()!.split(separator: " ").map { Int($0)! })
var M = Int(readLine()!)!

var result = 0

if input.reduce(0, +) <= M {
    print(input.max()!)
} else {
    while true {
        var sum = 0
        input.forEach {
            sum += ($0 <= result) ? $0 : result
        }
        if M < sum {
            result -= 1
            break
        } else {
            result += 1
        }
    }
    print(result)
}
