//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2024/01/21.
//

import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var appleBox: [Int] = []
    var answer = 0
    
    for i in score.sorted(by: >) {
        appleBox.append(i)
        
        if appleBox.count == m {
            answer += (appleBox.min() ?? 0) * m
            appleBox.removeAll()
        }
    }
    
    return answer
}
