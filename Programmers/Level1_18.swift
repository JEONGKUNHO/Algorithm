//
 //  main.swift
 //  codingTest
 //
 //  Created by 정건호 on 2021/10/23.
 //

import Foundation

func solution(_ n:Int, _ m:Int) -> [Int] {
    var answer : [Int] = []
    var number : Int = 0
    var temp : Int = 0
    if n>m {
        number = m
    } else{
        number = n
    }
    //최대공약수
    for i in 1...number {
        if(n%i == 0 && m%i == 0){
            temp = i
        }
    }
    answer.append(temp)
    //최소공배수
    
    number = m * n
    for i in 1...number {
        if(i%n == 0 && i%m == 0){
            answer.append(i)
            break
        }
    }
    
    
    return answer
}
