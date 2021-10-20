//
 //  main.swift
 //  codingTest
 //
 //  Created by 정건호 on 2021/10/20.
 //

import Foundation

func solution(_ s:String) -> Int {
    let temp : Array = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    var answer = s
    for (index, str) in temp.enumerated(){
        if(answer.contains(str)){
            answer = answer.replacingOccurrences(of: str, with: String(index))
        }
    }
    return Int(answer)!
}
