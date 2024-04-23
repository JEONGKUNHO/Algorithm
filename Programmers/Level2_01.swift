//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2024/01/18.
//

import Foundation

func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
    let queue = queue1 + queue2
    var queue1Sum = queue1.reduce(0, { $0 + $1 })
    var queue2Sum = queue2.reduce(0, { $0 + $1 })
    let goal = (queue1Sum + queue2Sum) / 2
    var left = 0
    var right = queue2.count
    var answer = 0
    
    if (queue1Sum + queue2Sum) % 2 != 0 ||
        goal < queue1.max() ?? 0 ||
        goal < queue2.max() ?? 0 {
        return -1
    }
    
    while true {
        if queue1Sum > queue2Sum {
            queue2Sum += queue[left]
            queue1Sum -= queue[left]
            left += 1
            answer += 1
        } else if queue1Sum < queue2Sum {
            queue1Sum += queue[right]
            queue2Sum -= queue[right]
            right += 1
            answer += 1
        } else {
            break
        }
        
        if queue1Sum == queue2Sum {
            break
        }
        
        if left > right || right > queue.count - 1 {
            answer = -1
            break
        }
    }
    return answer
}
