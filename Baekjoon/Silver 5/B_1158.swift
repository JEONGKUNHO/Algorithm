//
//  main.swift
//  codingTest
//
//  Created by 정건호 on 2021/11/22.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

var N = input[0]
var K = input[1]
var array: [Int] = []
var resultArr: [Int] = []
for i in 1...N {
    array.append(i)
}

var index = 0
var count = 0

while(true) {
    count += 1
    index += 1
    
    if(index == array.count+1){
        index = 1
    }
    
    if(count == K) {
        resultArr.append(array[index-1])
        array.remove(at: index-1)
        index -= 1
        count = 0
        if(array.isEmpty){
            break
        }
    }
}



print("<" + resultArr.map({String($0)}).joined(separator: ", ") + ">")
