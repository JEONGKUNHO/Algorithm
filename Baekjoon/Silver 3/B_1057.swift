//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/02/15.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

var jimin = input[1]
var hansu = input[2]
var count = 0
while true {
    jimin = (jimin+1) / 2
    hansu = (hansu+1) / 2
    count += 1
    if jimin == hansu {
        break
    }
}
print(count)
