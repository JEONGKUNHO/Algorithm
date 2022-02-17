//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/02/17.
//

import Foundation

let T = Int(readLine()!)!

func solution(_ num: Int) -> Int {
    if num == 1 {
        return 1
    } else if num == 2 {
        return 2
    } else if num == 3 {
        return 4
    } else {
        return solution(num-1) + solution(num-2) + solution(num-3)
    }
}
for _ in 0...T-1 {
    let n = Int(readLine()!)!
    print(solution(n))
}
