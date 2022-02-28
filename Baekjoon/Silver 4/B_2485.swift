//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/02/28.
//

import Foundation

let N = Int(readLine()!)!
var location: [Int] = []
for _ in 0...N-1 {
    let input = Int(readLine()!)!
    location.append(input)
}
var arr: [Int] = []
for i in 0...location.count-2 {
    arr.append(location[i+1]-location[i])
}

var length = arr.min()!

while true {
    var count = 0
    for i in arr {
        if i % length == 0 {
            count += 1
        } else {
            length -= 1
            break
        }
    }
    if count == arr.count {
        break
    }
}

var count = 0
var treeLocation = location.min()!

print(((location.max()! - location.min()!) / length) - (location.count-1))
