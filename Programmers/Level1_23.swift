//
//  main.swift
//  codingTest
//
//  Created by 정건호 on 2021/11/02.
//

import Foundation

func solution(_ n:Int64) -> [Int] {
    var answer : [Int] = []
    for i in String(n).reversed(){
        answer.append(Int(String(i))!)
    }
    return answer
}
