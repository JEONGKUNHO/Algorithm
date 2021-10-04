//
//  main.swift
//  codingTest
//
//  Created by 정건호 on 2021/10/04.
//

import Foundation

let input = readLine()!
var arr : [String] = []
var index : Int = 0
var compare = String(input[input.startIndex])
arr.append(compare)
var count : Int = 0
for i in input{
    if(String(i) == compare) {
        continue
    } else {
        compare = String(i)
        arr.append(String(i))
    }
}
var result : [Int] = [0,0] // index 0 = 0, 1 = 1
for i in arr {
    if i == "0" {
        result[0] += 1
    } else {
        result[1] += 1
    }
}
print(result.min()!)
