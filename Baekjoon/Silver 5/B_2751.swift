//
//  main.swift
//  codingTest
//
//  Created by 정건호 on 2021/11/15.
//

import Foundation


let N = Int(readLine()!)!
var arr: [Int] = []
for _ in 1...N{
    let input = Int(readLine()!)!
    arr.append(input)
}
arr.sort()
for i in 0...arr.count-1 {
    print(arr[i])
}
