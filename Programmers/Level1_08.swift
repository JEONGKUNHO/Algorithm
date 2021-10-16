//
 //  main.swift
 //  codingTest
 //
 //  Created by 정건호 on 2021/10/11.
 //



import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var answer = 0
    for i in left...right {
        if(divisor(i)%2 == 0){
            answer += i
        } else{
            answer -= i
        }
    }
    return answer
}

func divisor (_ number : Int) -> Int {
    var count = 0
    for i in 1...number {
        if(number % i == 0){
            count += 1
        }
    }
    return count
}
