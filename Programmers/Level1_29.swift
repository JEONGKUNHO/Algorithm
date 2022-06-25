//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/06/25.
//

import Foundation

func solution(_ dartResult:String) -> Int {
    var score: [Int] = []
    var stage = 0
    var stageScore = 0.0
    var number = ""
    
    for i in 0...dartResult.count-1 {
        let char = dartResult[dartResult.index(dartResult.startIndex, offsetBy: i)]
        if char.isNumber {
            number.append(char)
        } else if char.isLetter {
            if char == "S" {
                stageScore = Double(number)!
            } else if char == "D" {
                stageScore = pow(Double(number)!, 2)
            } else if char == "T" {
                stageScore = pow(Double(number)!, 3)
            }
            stage += 1
            score.append(Int(stageScore))
            stageScore = 0
            number = ""
        } else if char.isASCII {
            if char == "*" {
                if stage-1 != 0 {
                    score[stage-1] *= 2
                    score[stage-2] *= 2
                } else {
                    score[stage-1] *= 2
                }
            } else if char == "#" {
                score[stage-1] *= -1
            }
        }
    }
    
    return score.reduce(0, +)
}
