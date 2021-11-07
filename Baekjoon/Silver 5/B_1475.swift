//
//  main.swift
//  codingTest
//
//  Created by 정건호 on 2021/11/07.
//

import Foundation

let N = readLine()!
var arr: [Int] = []
var numCount: [Int] = [0,0,0,0,0,0,0,0,0,0] //0~9까지 카운트
for i in N {
    if Int(String(i)) == 6{
        arr.append(9)
    } else{
        arr.append(Int(String(i))!)
    }
}
for i in arr {
    numCount[i] += 1
}
var max: Int = 0
var count: Int = 0
var temp: Int = 0 // 9의 경우를 판별하기 위한 변수
for i in numCount {
    if count == 9 {
        if i%2 == 0 {
            temp = i/2
        } else {
            temp = i/2 + 1
        }
    }
    if count == 9 && max<=temp{
        max = temp
    } else if(max < i){
        max = i
    }
    count += 1
}
print(max)


