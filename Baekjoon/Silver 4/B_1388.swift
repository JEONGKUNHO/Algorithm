//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/01/10.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0] //세로
let M = input[1] //가로
var count = 0
var arr = Array(repeating: Array(repeating: " ", count: M), count: N)

for i in 0...N-1 {
    let temp = readLine()!
    for j in 0...M-1 {
        arr[i][j] = String(temp[temp.index(temp.startIndex, offsetBy: j)])
    }
}

for i in 0...N-1 {
    var widthTree = false
    for j in 0...M-1 {
        if arr[i][j] == "-" {
            widthTree = true
            if j == M-1 {
                count += 1
            }
        } else {
            if widthTree == true {
                count += 1
                widthTree = false
            }
        }
    }
}

for i in 0...M-1 {
    var heightTree = false
    for j in 0...N-1 {
        if arr[j][i] == "|" {
            heightTree = true
            if j == N-1 {
                count += 1
            }
        } else {
            if heightTree == true {
                count += 1
                heightTree = false
            }
        }
    }
}


print(count)
