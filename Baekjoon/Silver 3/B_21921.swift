//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2024/02/05.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0], X = input[1]
let visit = Array(readLine()!.split(separator: " ").map { Int($0)! })

var currentVisit = visit[0..<X].reduce(0, +)
var maxVisit = currentVisit
var period = 1

for index in X..<N {
    currentVisit -= visit[index-X]
    currentVisit += visit[index]
    
    if maxVisit == currentVisit {
        period += 1
    } else if maxVisit < currentVisit {
        period = 1
        maxVisit = currentVisit
    }
}

if maxVisit == 0 {
    print("SAD")
} else {
    print(maxVisit)
    print(period)
}
