//
//  main.swift
//  codingTest
//
//  Created by 정건호 on 2021/10/06.
//

import Foundation

import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var result = 0
    var sum = 0
    for i in d.sorted() {
        sum += i
        if sum <= budget {
            result += 1
        }
        else{
            break
        }
    }
    
    return result
}
