//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/01/25.
//

import Foundation

let N = Int(readLine()!)!
let card = readLine()!.split(separator: " ").map { Int($0)! }

let M = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int($0)! }

var countNum = [Int:Int]()

for i in card.sorted() {
    countNum[i] = 1
}

for i in nums {
    if countNum.keys.contains(i) {
        print("1", terminator: " ")
    } else {
        print("0", terminator: " ")
    }
}

