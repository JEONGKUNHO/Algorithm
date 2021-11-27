//
//  main.swift
//  codingTest
//
//  Created by 정건호 on 2021/11/27.
//

import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var array = board
    var bucket = [Int]()
    var popCount = 0
    var bucketCount = -1
    for index in moves {
        for i in 0...array.count-1 {
            
            if(array[i][index-1] == 0) {
                continue
            } else {
                if(bucket.isEmpty){
                    bucket.append(array[i][index-1])
                    bucketCount += 1
                    array[i][index-1] = 0
                    break
                } else {
                    if(bucket[bucketCount] == array[i][index-1]) {
                        bucket.remove(at: bucketCount)
                        bucketCount -= 1
                        array[i][index-1] = 0
                        popCount += 2
                        break
                    } else {
                        bucket.append(array[i][index-1])
                        array[i][index-1] = 0
                        bucketCount += 1
                        break
                    }
                }
            }
        }
    }
    
    return popCount
}


