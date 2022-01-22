//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/01/22.
//


import Foundation

let K = Int(readLine()!)!
var arr: [Int] = []
for _ in 0...K-1 {
    let input = Int(readLine()!)!
    if input == 0 {
        arr.remove(at: arr.count-1)
    } else {
        arr.append(input)
    }
}
print(arr.reduce(0, +))

