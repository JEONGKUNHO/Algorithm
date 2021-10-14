//
 //  main.swift
 //  codingTest
 //
 //  Created by 정건호 on 2021/10/14.
 //


import Foundation

func solution(_ nums:[Int]) -> Int {
    var answer = 0

    for i in 0...nums.count-3{
        for j in i+1...nums.count-2{
            for k in j+1...nums.count-1{
                if(primeNumber(nums[i]+nums[j]+nums[k])){
                    answer += 1
                }
            }
        }
    }
 
    
    return answer
}

func primeNumber(_ number : Int) -> Bool {
    var count = 0
    for i in 1...number {
        if(number % i == 0){
            count += 1
        }
    }
    if(count == 2){
        return true
    } else {
        return false
    }
}
