//
//  main.swift
//  codingTest
//
//  Created by 정건호 on 2021/11/07.
//

import Foundation

func solution(_ n:Int) -> Int {
    var answer = 0
    for i in stride(from: n-1, to: 1, by: -1) {
        if(n%i == 1){
            answer = i
        }
    }
    return answer
}
