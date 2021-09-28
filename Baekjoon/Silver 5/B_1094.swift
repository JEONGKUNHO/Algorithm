//
//  main.swift
//  codingTest
//
//  Created by 정건호 on 2021/09/28.
//

import Foundation

var x = Int(readLine()!)!
var bar : Int = 64
var arr : [Int] = []
var count : Int = 0

while(x>0){
    if(bar > x){
        bar /= 2
    } else {
        count += 1
        x -= bar
    }
}
print(count)
