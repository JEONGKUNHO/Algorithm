//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/02/08.
//

import Foundation

let N = Int(readLine()!)!
let M = Int(readLine()!)!
var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: N), count: N)
var x = 0
var y = 0
var answerX = 0
var answerY = 0
var num = N*N
var direction = "down"
while num != 0 {
    arr[x][y] = num
    if num == M {
        answerX = x+1
        answerY = y+1
    }
    if direction == "down" {
        x += 1
        if x == N-1 || arr[x+1][y] != 0 {
            direction = "right"
        }
    } else if direction == "right" {
        y += 1
        if y == N-1 || arr[x][y+1] != 0 {
            direction = "up"
        }
    } else if direction == "up" {
        x -= 1
        if x == 0 || arr[x-1][y] != 0 {
            direction = "left"
        }
    } else if direction == "left" {
        y -= 1
        if y == 0 || arr[x][y-1] != 0 {
            direction = "down"
        }
    }
    num -= 1
}
for i in arr {
    for j in i {
        print(j, terminator: " ")
    }
    print()
}
print(answerX, answerY)
