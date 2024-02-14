//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2024/02/14.
//

import Foundation

let N = Int(readLine()!)!
var dp = Array(repeating: Array(repeating: 0, count: 3), count: N+1)
var rgb = Array(repeating: [0, 0, 0], count: N+1)

for i in 1..<N+1 {
    rgb[i] = Array(readLine()!.split(separator: " ")).map { Int($0)! }
}

for i in 1..<N+1 {
    dp[i][0] = min(dp[i-1][1], dp[i-1][2]) + rgb[i][0]
    dp[i][1] = min(dp[i-1][0], dp[i-1][2]) + rgb[i][1]
    dp[i][2] = min(dp[i-1][0], dp[i-1][1]) + rgb[i][2]
}

print(dp.last!.min()!)
