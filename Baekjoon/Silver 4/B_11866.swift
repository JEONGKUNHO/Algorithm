//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/01/22.
//


import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

let N = input[0]
let K = input[1]
var arr: [Int] = []
for i in 1...N {
    arr.append(i)
}
var index = K-1
var answer: [Int] = []
while true {
    answer.append(arr.remove(at: index))
    if arr.isEmpty {
        break
    }
    index = (index + K - 1) % arr.count
}
print("<" + answer.map({String($0)}).joined(separator: ", ") + ">")
