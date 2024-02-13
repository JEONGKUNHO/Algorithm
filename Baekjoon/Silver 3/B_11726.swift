//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2024/02/13.
//

import Foundation

let n = Int(readLine()!)!
var array = Array(repeating: 0, count: n+1)

if n == 1 {
    print(1)
} else if n == 2 {
    print(2)
} else {
    array[1] = 1
    array[2] = 2
    for i in 3..<n+1 {
        array[i] = (array[i-1] + array[i-2]) % 10007
    }
    print(array[n])
}
