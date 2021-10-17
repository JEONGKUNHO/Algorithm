//
 //  main.swift
 //  codingTest
 //
 //  Created by 정건호 on 2021/10/17.
 //


func solution(_ num:Int) -> Int {
    var newNum : Int = num
    var count = 0
    while(newNum != 1){
        if(newNum % 2 == 0){
            newNum /= 2
        } else {
            newNum = newNum*3 + 1
        }
        count += 1
        if(count == 500){
            return -1
        }
    }
    return count
}
