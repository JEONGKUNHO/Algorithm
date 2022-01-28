//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/01/29.
//

import Foundation

let N = Int(readLine()!)!
var count = 0
for _ in 0...N-1 {
    let input = readLine()!
    var stack: [Character] = []
    for i in input {
        if stack.isEmpty {
            stack.append(i)
        } else {
            if stack[stack.count-1] == i {
                stack.remove(at: stack.count-1)
            } else {
                stack.append(i)
            }
        }
    }
    if stack.isEmpty {
        count += 1
    }
}

print(count)
