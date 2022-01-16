//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/01/15.
//

import Foundation

let AB = readLine()!.split(separator: " ").map { Int($0)! }
let A = AB[0]
let B = AB[1]
let N = Int(readLine()!)!
var arr: [Int] = []
var min = (B-A).magnitude
for _ in 0...N-1 {
    let input = Int(readLine()!)!
    arr.append(input)
}

for i in arr {
    if (i-B).magnitude < min {
        min = (i-B).magnitude
    }
}

if min == (B-A).magnitude {
    print(min)
} else {
    print(min+1)
}
