//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/02/05.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
var num = input[0]
var index = 0
let squared = input[1]
var arr: [Int] = [num]

while true {
    var tempNum = 0
    for i in String(num) {
        tempNum = tempNum + Int(pow(Double(Int(String(i))!), Double(squared)))
    }
    if arr.contains(tempNum) {
        index = arr.firstIndex(of: tempNum)!
        break
    }
    arr.append(tempNum)
    num = tempNum
}

print(index)
