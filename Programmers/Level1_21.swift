//
 //  main.swift
 //  codingTest
 //
 //  Created by 정건호 on 2021/10/28.
 //

import Foundation

func solution(_ n:Int) -> Int {
    
    var arrayInt : [Int] = []
    var count = 0
    for _ in 0...n {
        arrayInt.append(0)
    }
    
    for i in 2...n {
        if arrayInt[i] == 0 {
            count += 1
            for i in stride(from: i, through: n, by: i){
                arrayInt[i] = 1
            }
        }
    }
    return count
}
