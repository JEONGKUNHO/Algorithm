//
 //  main.swift
 //  codingTest
 //
 //  Created by 정건호 on 2021/10/09.
 //



import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var count : [Int] = []
    var failure : [Double] = []
    for i in 0...N {
        count.append(0)
        if i == N{
            break
        }
        failure.append(0)
    }
    
    var numOfperson : Int = stages.count
    for i in stages {
        count[i-1] += 1
    }

    for i in 0...N-1 {
        if(count[i] == 0){
            failure[i] = 0
        } else {
            failure[i] = Double(count[i])/Double(numOfperson)
            numOfperson -= count[i]
        }
    }
    var answer : [Int] = []
    let rankOffailure : [Double] = failure.sorted().reversed()
    for i in 0...rankOffailure.count-1 {
        for j in 0...failure.count-1 {
            if rankOffailure[i] == failure[j] {
                answer.append(j+1)
                failure[j] = -1
                break
            }
        }
    }
    
    return answer
}

print(solution(5, [2, 1, 2, 6, 2, 4, 3, 3]))
