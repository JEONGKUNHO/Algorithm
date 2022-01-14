//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/01/14.
//

import Foundation

let N = Int(readLine()!)!
var arr: [Int] = []
for _ in 0...N-1 {
    let input = Int(readLine()!)!
    arr.append(input)
}

arr.sort()
var answer = 0
var temp = 0
var count = arr.count
if count == 1 {
    print(arr[0])
} else{
    for i in 0...arr.count-2 {
        if arr[i] * count < arr[i+1] * (count-1) {
            temp = arr[i+1] * (count-1)
        } else {
            temp = arr[i] * count
        }
        if answer < temp {
            answer = temp
        }
        count -= 1
    }
    
    print(answer)
}
