//
//  main.swift
//  codingTest
//
//  Created by 정건호 on 2021/11/15.
//

import Foundation


let T = Int(readLine()!)!
var arr: [Int] = []
let N = 3

for _ in 0...T-1 {
    arr.removeAll()
    let input = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    for i in 0...9 {
        arr.append(input[i])
    }
    print(arr.sorted().reversed()[N-1])
}




