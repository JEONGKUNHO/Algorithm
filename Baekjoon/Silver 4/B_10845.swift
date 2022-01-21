//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/01/21.
//


import Foundation

let N = Int(readLine()!)!
var queue: [Int] = []
for _ in 0...N-1 {
    let input = readLine()!.split(separator: " ").map { String($0) }
    if input[0] == "push" {
        queue.insert(Int(input[1])!, at: 0)
    } else if input[0] == "pop" {
        if queue.isEmpty == true {
            print("-1")
        } else {
            print(queue[queue.count-1])
            queue.remove(at: queue.count-1)
        }
    } else if input[0] == "size" {
        print(queue.count)
    } else if input[0] == "empty" {
        if queue.isEmpty == true {
            print("1")
        } else {
            print("0")
        }
    } else if input[0] == "front" {
        if queue.isEmpty {
            print("-1")
        } else {
            print(queue[queue.count-1])
        }
    } else if input[0] == "back" {
        if queue.isEmpty {
            print("-1")
        } else {
            print(queue[0])
        }
    }
}
