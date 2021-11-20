//
//  main.swift
//  codingTest
//
//  Created by 정건호 on 2021/11/20.
//

import Foundation

let input = Array(readLine()!)
var array: [String] = []

for i in 0...input.count-3 {
    for j in i+1...input.count-2 {
        for k in j+1...input.count-1 {
            let temp = String(input[0...j-1].reversed()) + String(input[j...k-1].reversed()) + String(input[k...input.count-1].reversed())
            array.append(temp)
        }
    }
}


print(array.sorted(by: <)[0])
