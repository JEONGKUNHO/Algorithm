//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2024/01/31.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let temperatures = readLine()!.split(separator: " ").map { Int($0)! }
let N = input.first!
let K = input.last!
var maxTemperature = temperatures[0..<K].reduce(0, { $0 + $1 })
var sum = maxTemperature

for index in 0..<temperatures.count - K {
    sum -= temperatures[index]
    sum += temperatures[index + K]
    if sum > maxTemperature {
        maxTemperature = sum
    }
}

print(maxTemperature)
