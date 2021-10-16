//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2021/10/07.
//

import Foundation

import Foundation

func solution(_ n:Int) -> Int {
    if(n==1){
        return 1
    }
    var answer : Int = 0
    var mulNum : Int = 1
    for i in ternary(n).reversed() {
        answer += i * mulNum
        mulNum = mulNum * 3
    }
    return answer
}

func ternary( _ n:Int) -> [Int] {
    var temp : Int = n
    var result : [Int] = []
    while(true){
        result.append(temp%3)
        temp = temp / 3
        if (temp<3) {
            result.append(temp)
            return result
        }
    }
}
