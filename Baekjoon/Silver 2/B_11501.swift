//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2024/02/02.
//

import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    let N = Int(readLine()!)!
    let input = Array(readLine()!.split(separator: " ").map { Int($0)! })
    var answer = 0
    var max = input[input.count-1]
    var array: [Int] = []
    for index in stride(from: N-2, through: 0, by: -1) {
        if max < input[index] {
            array.forEach { answer += (max - $0) }
            array.removeAll()
            max = input[index]
        } else {
            array.append(input[index])
        }
        if index == 0 {
            array.forEach { answer += (max - $0) }
        }
    }
    print(answer)
}
