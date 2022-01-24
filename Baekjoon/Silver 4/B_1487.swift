//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/01/24.
//

import Foundation

let N = Int(readLine()!)!
var arr: [(Int,Int)] = []
var totalPrice = 0
var answer = 0
for _ in 0...N-1 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    arr.append((input[0],input[1]))
}
arr.sort(by: <)
for i in 0...arr.count-1 {
    if arr[i].0 <= arr[i].1 {
        continue
    }
    var price = 0
    for j in i...arr.count-1 {
        if arr[i].0 >= arr[j].1 {
            price += (arr[i].0 - arr[j].1)
        }
    }
    if totalPrice < price {
        totalPrice = price
        answer = arr[i].0
    }
}
print(answer)
