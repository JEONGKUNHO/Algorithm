//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2023/12/20.
//

import Foundation

func solution(_ number:[Int]) -> Int {
    var result = 0
    
    for i in 0...number.count - 3 {
        for j in i+1...number.count - 2 {
            for z in j+1...number.count - 1 {
                if number[i] + number[j] + number[z] == 0 { result += 1 }
            }
        }
    }
    return result
}
