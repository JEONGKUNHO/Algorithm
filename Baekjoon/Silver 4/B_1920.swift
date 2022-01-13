//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/01/13.
//

import Foundation

let N = Int(readLine()!)!
let input1 = readLine()!.split(separator: " ").map { Int($0)! }
var A: Set<Int> = []
for i in input1 {
    A.insert(i)
}
let M = Int(readLine()!)!
let input2 = readLine()!.split(separator: " ").map { Int($0)! }
var set: Set<Int> = []
var arr: [Int] = []
for i in input2 {
    set.insert(i)
    arr.append(i)
}
var commonArr = A.intersection(arr)
for i in arr {
    if commonArr.contains(i) {
        print("1")
    } else {
        print("0")
    }
}
