//
//  main.swift
//  codingTest
//
//  Created by 정건호 on 2021/11/27.
//

import Foundation

let input = readLine()!.split(separator: " ").map{ Int($0)! }
let N = input[0]
let M = input[1]
var result: String = ""
var hammingDistance: Int = 0
var array: [String] = []
for i in 0...N-1 {
    let DNA = readLine()!
    array.append(DNA)
}

var countArr: [Int] = [] //ACGT 순으로

for index in 0...M-1 {
    countArr = [0,0,0,0]
    for i in array {
        if(Array(i)[index] == "A") {
            countArr[0] += 1
        } else if(Array(i)[index] == "C") {
            countArr[1] += 1
        } else if(Array(i)[index] == "G") {
            countArr[2] += 1
        } else if(Array(i)[index] == "T") {
            countArr[3] += 1
        }
    }
    
    var index = 0
    var max = -1
    for i in 0...countArr.count-1 {
        if(countArr[i] > max) {
            max = countArr[i]
            index = i
        }
    }
    hammingDistance += (countArr.reduce(0, +) - max)
    if(index == 0) {
        result += "A"
    } else if(index == 1) {
        result += "C"
    } else if(index == 2) {
        result += "G"
    } else if(index == 3) {
        result += "T"
    }
}
print(result)
print(hammingDistance)


