//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2024/02/19.
//

import Foundation

let input = Array(readLine()!.split(separator: "-"))
var result = 0
for i in 0..<input.count {
    let num = input[i].split(separator: "+").map { Int($0)! }.reduce(0, +)
    if i == 0 {
        result += num
    } else {
        result -= num
    }
}

print(result)
