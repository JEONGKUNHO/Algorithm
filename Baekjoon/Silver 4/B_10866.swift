//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/01/31.
//

import Foundation

let N = Int(readLine()!)!
var deque: [Int] = []
for _ in 0...N-1 {
    let input = readLine()!.split(separator: " ").map { String($0) }
    
    if input[0] == "push_front" {
        deque.insert(Int(input[1])!, at: 0)
    } else if input[0] == "push_back" {
        deque.append(Int(input[1])!)
    } else if input[0] == "pop_front" {
        if deque.isEmpty {
            print(-1)
        } else {
            print(deque.remove(at: 0))
        }
    } else if input[0] == "pop_back" {
        if deque.isEmpty {
            print(-1)
        } else {
            print(deque.removeLast())
        }
    } else if input[0] == "size" {
        print(deque.count)
    } else if input[0] == "empty" {
        if deque.isEmpty {
            print(1)
        } else {
            print(0)
        }
    } else if input[0] == "front" {
        if deque.isEmpty {
            print(-1)
        } else {
            print(deque[0])
        }
    } else if input[0] == "back" {
        if deque.isEmpty {
            print(-1)
        } else {
            print(deque[deque.count-1])
        }
    }
}
