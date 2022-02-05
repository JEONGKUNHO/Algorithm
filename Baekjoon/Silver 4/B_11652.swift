//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/02/05.
//

import Foundation

let N = Int(readLine()!)!
var dic: [Int:Int] = [:]
for _ in 1...N {
    let input = Int(readLine()!)!
    if dic.keys.contains(input) {
        dic[input]! += 1
    } else {
        dic[input] = 1
    }
}

let newDic = dic.sorted { (first, second) -> Bool in
    if first.value == second.value {
        return first.key < second.key
    }
    return first.value > second.value
}

print(newDic[0].key)
