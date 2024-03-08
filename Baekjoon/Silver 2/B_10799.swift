//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2024/03/07.
//

import Foundation

let input = Array(readLine()!)
var stack: [Character] = []
var result = 0

for index in 0..<input.count {
    if input[index] == "(" {
        stack.append(input[index])
    } else {
        stack.removeLast()
        if input[index - 1] == "(" {
            result += stack.count
        } else {
            result += 1
        }
    }
}

print(result)
