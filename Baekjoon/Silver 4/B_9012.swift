//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/01/20.
//


import Foundation

let N = Int(readLine()!)!
Loop1: for _ in 0...N-1 {
    var openCount = 0
    var closeCount = 0
    let input = readLine()!
    if input[input.startIndex] == ")" || input[input.index(before: input.endIndex)] == "(" {
        print("NO")
        continue
    }
    for i in input {
        if i == "(" {
            openCount += 1
        } else if i == ")" {
            closeCount += 1
        }
        if closeCount > openCount {
            print("NO")
            continue Loop1
        }
    }
    if openCount == closeCount {
        print("YES")
    } else {
        print("NO")
    }
}
