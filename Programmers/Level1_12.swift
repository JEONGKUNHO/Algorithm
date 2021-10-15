//
 //  main.swift
 //  codingTest
 //
 //  Created by 정건호 on 2021/10/15.
 //


import Foundation
func solution(_ s:String) -> String {
    
    var answer : String = ""
    for i in s.components(separatedBy: " "){
        if i == "" {
            answer += " "
            continue
        }
        answer += changeString(i) + " "
    }
    answer.removeLast()
    return answer
}
func changeString(_ s: String) -> String {
    var result : String = ""
    for i in 0...s.count-1{
       if(i % 2 == 0){
            result += String(s[s.index(s.startIndex, offsetBy: i)]).uppercased()
        } else {
            result += String(s[s.index(s.startIndex, offsetBy: i)]).lowercased()
        }
    }
    return result
}
