//
//  main.swift
//  codingTest
//
//  Created by 정건호 on 2021/01/02.
//

import Foundation

let N = Int(readLine()!)!

var arr: [String] = []
for _ in 1...N {
    let input = readLine()!
    arr.append(input)
}

var dicArr : [String : Int] = [:]

for i in arr {
    if dicArr.keys.contains(i) {
        dicArr.updateValue(dicArr[i]! + 1, forKey: i)
    } else {
        dicArr.updateValue(1, forKey: i)
    }
}

var answer: [String] = []
var max = dicArr.values.max()!

for (key, value) in dicArr {
    if value == max {
        answer.append(key)
    }
}
answer.sort()

print(answer[0])
