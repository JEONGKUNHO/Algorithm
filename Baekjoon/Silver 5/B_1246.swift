//
//  main.swift
//  codingTest
//
//  Created by 정건호 on 2021/09/29.
//

import Foundation

var input = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var N : Int = input[0]
var M : Int = input[1]
var P : [Int] = []
var max : Int = 0
var price : Int = 0
var price_sum :
Int = 0
for _ in 1...M {
    let temp = Int(readLine()!)!
    P.append(temp)
}
P.sort()

for i in 0...P.count-1 {
    if(i == P.count-1){
        price_sum = P[i]
    } else if(P[i] != P[i+1]) {
        if(M-i>N){
            price_sum = P[i]*N
        } else{
            price_sum = P[i]*(M-i)
        }
    }
        if(price_sum > max){
            max = price_sum
            price = P[i]
        }
}
print("\(price) \(max)")
