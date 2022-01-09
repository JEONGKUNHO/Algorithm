//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/01/09.
//

import Foundation

let N = Int(readLine()!)!

var arr = [Int](1...N)
var temp = 0

if N == 1 {
    print("1")
} else {
    while true {
        arr[temp] = 0
        arr.append(arr[temp+1])
        arr[temp+1] = 0
        if arr[arr.count - 2] == 0 {
            print(arr.last!)
            break
        }
        temp += 2
    }
}


