//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/01/23.
//


import Foundation

let N = Int(readLine()!)!
var dic: [Int : Int] = [:]
let card = readLine()!.split(separator: " ").map { Int($0)! }

let M = Int(readLine()!)!
let num = readLine()!.split(separator: " ").map { Int($0)! }

for i in card {
    if dic.keys.contains(i) {
        dic[i]! += 1
    } else{
        dic[i] = 1
    }
}

for i in num {
    if dic.keys.contains(i) {
        print(dic[i]!, terminator: " ")
    } else{
        print("0", terminator: " ")
    }
}


