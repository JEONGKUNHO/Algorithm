//
 //  main.swift
 //  codingTest
 //
 //  Created by 정건호 on 2021/10/18.
 //

func solution(_ arr:[Int]) -> [Int] {
    let minNum : Int = arr.min()!
    var answer : [Int] = arr
    
    while answer.contains(minNum) {
            let index = answer.firstIndex(of: minNum)!
            answer.remove(at: index)
    }
    if(answer.count == 0){
        answer.append(-1)
        return answer
    } else{
        return answer
    }
}
