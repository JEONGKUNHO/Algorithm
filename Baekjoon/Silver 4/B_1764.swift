//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/01/10.
//

import Foundation

let inputNum = readLine()!.split(separator: " ").map { Int($0)! }
let N = inputNum[0]
let M = inputNum[1]
var notListen: Set<String> = []
var notSee: Set<String> = []
var arr: Set<String> = []
for _ in 0...N-1 {
    let input = readLine()!
    notListen.insert(input)
}
for _ in 0...M-1 {
    let input = readLine()!
    notSee.insert(input)
}

arr = notListen.intersection(notSee)

print(arr.count)

for i in arr.sorted() {
    print(i)
}
