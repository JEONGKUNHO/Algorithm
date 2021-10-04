//
//  main.swift
//  codingTest
//
//  Created by 정건호 on 2021/10/04.
//

import Foundation


func solution(_ answers:[Int]) -> [Int] {
    let number1 : [Int] = [1,2,3,4,5]
    let number2 : [Int] = [2,1,2,3,2,4,2,5]
    let number3 : [Int] = [3,3,1,1,2,2,4,4,5,5]
    
    var result_temp : [Int] = []
    var result : [Int] = []

    
    for index in 1...3 {
        var count : Int = 0
        var answer : Int = 0
        if(index == 1){
            for i in answers{
                if i == number1[count] {
                    answer+=1
                }
                count+=1
                if(count == number1.count){
                    count = 0
                }
            }
            result_temp.append(answer)
        }
        else if(index == 2){
            for i in answers{
                if i == number2[count] {
                    answer+=1
                }
                count+=1
                if(count == number2.count){
                    count = 0
                }
            }
            result_temp.append(answer)
        }
        else if(index == 3){
            for i in answers{
                if i == number3[count] {
                    answer+=1
                }
                count+=1
                if(count == number3 .count){
                    count = 0
                }
            }
            result_temp.append(answer)
        }
    }
    
    for i in 1...3 {
        if result_temp[i-1] == result_temp.max(){
            result.append(i)
        }
    }
    
    return result
}
