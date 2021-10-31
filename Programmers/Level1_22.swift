//
//  main.swift
//  codingTest
//
//  Created by 정건호 on 2021/10/31.
//

import Foundation

func solution(_ phone_number:String) -> String {
    var answer : String = ""
    answer = ""
    for i in 0...phone_number.count-1 {
        if i == phone_number.count-4 || i == phone_number.count-3
        || i == phone_number.count-2 || i == phone_number.count-1 {
            answer += String(phone_number[phone_number.index(phone_number.startIndex, offsetBy: i)])
        }
        else {
            answer += "*"
        }
    }

    return answer
}

