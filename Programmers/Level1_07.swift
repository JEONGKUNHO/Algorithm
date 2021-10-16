//
 //  main.swift
 //  codingTest
 //
 //  Created by 정건호 on 2021/10/10.
 //



import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var answer : Int = n
    var lost_arr : [Int] = lost.sorted()
    var reserve_arr : [Int] = reserve.sorted()
    for i in 0...reserve_arr.count-1 {
        for j in 0...lost_arr.count-1 {
            if(reserve_arr[i] == lost_arr[j]){
                lost_arr[j] = -1
                reserve_arr[i] = -1
                break
            }
        }
    }
    
    for i in 0...reserve_arr.count-1 {
        for j in 0...lost_arr.count-1 {
            if(reserve_arr[i]-1 == lost_arr[j] || reserve_arr[i]+1 == lost_arr[j]){
                lost_arr[j] = -1
                break
            }
        }
    }
    
    for i in lost_arr {
        if(i != -1){
            answer -= 1
        }
    }
    return answer
}
