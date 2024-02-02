//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2024/02/03.
//

import Foundation

let T = Int(readLine()!)!
var farm: [[Bool]] = []

for _ in 0..<T {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let M = input[0] // 가로 길이
    let N = input[1] // 세로 길이
    let K = input[2] // 배추 위치의 개수
    var farm = Array(repeating: Array(repeating: false, count: M), count: N)
    var answer = 0
    
    for _ in 0..<K {
        let location = Array(readLine()!.split(separator: " ").map { Int($0)! })
        farm[location[1]][location[0]] = true
    }
    
    for i in 0..<M {
        for j in 0..<N {
            if farm[j][i] == true {
                dfs(x: i, y: j)
                answer += 1
            }
        }
    }
    
    func dfs(x: Int, y: Int) {
        if x < 0 || x >= M || y < 0 || y >= N {
            return
        }
        if farm[y][x] == true {
            farm[y][x] = false
            dfs(x: x+1, y: y)
            dfs(x: x-1, y: y)
            dfs(x: x, y: y+1)
            dfs(x: x, y: y-1)
        }
    }
    print(answer)
}


