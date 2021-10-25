//
 //  main.swift
 //  codingTest
 //
 //  Created by 정건호 on 2021/10/24.
 //

import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var answer : Int = 0
    for i in 0...absolutes.count-1 {
        if(signs[i] == true){
            answer += absolutes[i]
        } else {
            answer += absolutes[i] * -1
        }
    }
    return answer
}

