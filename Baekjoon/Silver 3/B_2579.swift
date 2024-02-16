//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2024/02/17.
//

import Foundation

let N = Int(readLine()!)!
var stairs: [Int] = [0]
var dp: [Int] = Array(repeating: 0, count: N+1)

for _ in 0..<N {
    let input = Int(readLine()!)!
    stairs.append(input)
}

if N == 1 {
    print(stairs[1])
} else if N == 2 {
    print(stairs[1] + stairs[2])
} else {
    dp[1] = stairs[1]
    dp[2] = stairs[1] + stairs[2]
    
    for i in 3...N {
        dp[i] = max(dp[i-3] + stairs[i-1], dp[i-2]) + stairs[i]
    }
    
    print(dp.last!)
}
