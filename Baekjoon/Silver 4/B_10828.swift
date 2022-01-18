//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/01/18.
//


import Foundation

let N = Int(readLine()!)!
var stack: [Int] = []
for _ in 1...N {
    let input = readLine()!.split(separator: " ").map { String($0) }
    if input[0] == "push" {
        stack.append(Int(input[1])!)
    } else if input[0] == "pop" {
        if stack.isEmpty {
            print("-1")
        } else {
            print(stack[stack.count-1])
            stack.remove(at: stack.count-1)
        }
    } else if input[0] == "size" {
        print(stack.count)
    } else if input[0] == "empty" {
        if stack.isEmpty {
            print("1")
        } else {
            print("0")
        }
    } else if input[0] == "top" {
        if !stack.isEmpty{
            print(stack[stack.count-1])
        } else {
            print("-1")
        }
    }
}
