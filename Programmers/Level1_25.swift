//
//  main.swift
//  codingTest
//
//  Created by 정건호 on 2021/11/08.
//

import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var arr: [[Int]] = []
    var max0 = 0
    var max1 = 0
    var temp0 = 0
    var temp1 = 0
    
    for size in sizes {
        if(size[0] > size[1]){
            arr.append(changeNum(size))
        } else {
            arr.append(size)
        }
    }
    for size in arr {
        temp0 = size[0]
        temp1 = size[1]
        if(max0<temp0){
            max0 = temp0
        }
        if(max1<temp1){
            max1 = temp1
        }
    }
    return max0*max1
}

func changeNum(_ size: [Int]) -> [Int] {
    let a = size[0]
    let b = size[1]
    let arr: [Int] = [b,a]
    return arr
 }



