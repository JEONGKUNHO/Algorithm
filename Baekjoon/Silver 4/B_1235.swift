//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/01/12.
//

import Foundation

let N = Int(readLine()!)!
var arr: [String] = []
var compareArr = Array(repeating: "", count: N)
for _ in 0...N-1 {
    let input = readLine()!
    arr.append(input)
}
var numLength = arr[0].count
var index = 1
var exitLoop = false
while index != numLength+1 {
    for i in 0...arr.count-1 {
        compareArr[i] = String(arr[i].suffix(index))
    }
Loop1: for i in 0...compareArr.count - 2 {
Loop2: for j in i+1...compareArr.count - 1 {
    if compareArr[i] == compareArr[j] {
        break Loop1
    }
    if i == compareArr.count - 2 && j == compareArr.count - 1 {
        exitLoop = true
    }
}
}
    if exitLoop {
        break
    }
    index += 1
}

print(index)
