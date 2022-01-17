//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/01/17.
//


import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let num1 = input[0]
let num2 = input[1]
var answer1 = 0
var answer2 = 0

for i in 1...min(num1, num2) {
    if num1 % i == 0 && num2 % i == 0 {
        answer1 = i
    }
}

if answer1 == 1 {
    answer2 = num1 * num2
} else {
    var tempNum = answer1
    while true {
        if tempNum % num1 == 0 && tempNum % num2 == 0 {
            answer2 = tempNum
            break
        }
        tempNum += answer1
    }
}

print(answer1)
print(answer2)
