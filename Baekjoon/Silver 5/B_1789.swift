//
 //  main.swift
 //  codingTest
 //
 //  Created by 정건호 on 2021/10/24.
 //

import Foundation

let S = Int(readLine()!)!

var i : Int = 1
var sum : Int = 0
var answer : Int = 0

while(true) {
    answer += 1
    sum += i
    if(sum == S){
        break
    } else if(sum > S) {
        answer -= 1
        break
    }
    i += 1
}
print(answer)


