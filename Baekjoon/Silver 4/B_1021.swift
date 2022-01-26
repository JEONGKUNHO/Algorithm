//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/01/26.
//

import Foundation

let NM = readLine()!.split(separator: " ").map { Int($0)! }
let N = NM[0]
let M = NM[1]

var queue = Array(1...N)
let numArr = readLine()!.split(separator: " ").map { Int($0)! }
var answer = 0
for i in numArr {
    if queue[0] == i {
        queue.remove(at: 0)
    } else {
        let firstIndex = queue.firstIndex(of: i)!
        let lastIndex = queue.count-1-firstIndex
        if firstIndex > lastIndex {
            for _ in 0...lastIndex {
                queue.insert(queue.removeLast(), at: 0)
                answer += 1
            }
            queue.remove(at: 0)
        } else {
            for _ in 0...firstIndex-1 {
                queue.append(queue.remove(at: 0))
                answer += 1
            }
            queue.remove(at: 0)
        }
    }
}
print(answer)
