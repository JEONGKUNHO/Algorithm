//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2024/02/02.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0], score = input[1], P = input[2]
var rank: [Int] = []

if N > 0 {
    rank = Array(readLine()!.split(separator: " ").map { Int($0)! })
    
    // 현재 랭크 개수가 들어갈 수 있는 랭크 개수보다 많을 경우
    if N >= P {
        if rank.min()! < score {
            rank.append(score)
            rank.sort(by: >)
            print(rank[0..<N].firstIndex(of: score)! + 1)
        } else {
            print(-1)
        }
    }
    // 그렇지 않은 경우
    else {
        rank.append(score)
        rank.sort(by: >)
        print(rank.firstIndex(of: score)! + 1)
    }
    
} else {
    print(1)
}
