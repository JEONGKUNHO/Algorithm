//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/02/04.
//

import Foundation

let N = readLine()!.split(separator: " ").map { Int($0)! }
var count = 0
var arr: [Int] = []

for i in 2...N[0] {
    arr.append(i)
}

var number = arr[0]
var plusNum = arr[0]
var removeNum = 0
while true {
    if let index = arr.firstIndex(of: number) {
        arr.remove(at: index)
        count += 1
        removeNum = number
        number += plusNum
    } else {
        if number > arr[arr.count-1] {
            number = arr[0]
            plusNum = arr[0]
            continue
        } else {
            number += plusNum
        }
    }
    if count == N[1] {
        print(removeNum)
        break
    }
}


