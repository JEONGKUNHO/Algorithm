//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/02/11.
//

import Foundation

let NM = readLine()!.split(separator: " ").map { Int($0)! }
let N = NM[0]
let M = NM[1]
var arr: [String] = []
var max = 0
for _ in 0...N-1 {
    let input = readLine()!
    arr.append(input)
}
if M == 1 {
    print("1")
} else {
    for i in 0...arr.count-1 {
        for j in 0...arr[i].count-2 {
            for k in j+1...arr[i].count-1 {
                if arr[i][arr[i].index(arr[i].startIndex, offsetBy: j)] == arr[i][arr[i].index(arr[i].startIndex, offsetBy: k)] {
                    let temp = arr[i][arr[i].index(arr[i].startIndex, offsetBy: j)]
                    if i+k-j > arr.count-1 {
                        continue
                    } else {
                        if arr[i+k-j][arr[i+k-j].index(arr[i+k-j].startIndex, offsetBy: j)] == temp && arr[i+k-j][arr[i+k-j].index(arr[i+k-j].startIndex, offsetBy: k)]  == temp {
                            if k-j+1 > max {
                                max = k-j+1
                            }
                        }
                    }
                }
            }
        }
    }
    if max == 0 {
        print("1")
    } else {
        print(max*max)
    }
}
