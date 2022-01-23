//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/01/23.
//


import Foundation

Loop1: while true {
    let input = readLine()!
    if input == "." {
        break
    }
    var arr: [Character] = []
    for i in input {
        if i == "[" || i == "(" {
            arr.append(i)
        } else if i == "]" || i == ")" {
            if arr.isEmpty {
                print("no")
                continue Loop1
            } else {
                if (i == "]" && arr.removeLast() == "(") || (i == ")" && arr.removeLast() == "[")  {
                    print("no")
                    continue Loop1
                }
            }
        }
    }
    if arr.isEmpty {
        print("yes")
    } else {
        print("no")
    }
}
