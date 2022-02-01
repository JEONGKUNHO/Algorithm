//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/02/01.
//

import Foundation

let N = Int(readLine()!)!
var distance = readLine()!.split(separator: " ").map { Int($0)! }
var price = readLine()!.split(separator: " ").map { Int($0)! }
var answer = 0
var tempPrice = price[0]
var tempDistance = distance[0]

for i in 1...N-2 {
    if tempPrice > price[i] {
        answer += (tempPrice * tempDistance)
        tempPrice = price[i]
        tempDistance = distance[i]
    } else {
        tempDistance += distance[i]
    }
}
print(answer + (tempDistance * tempPrice))
