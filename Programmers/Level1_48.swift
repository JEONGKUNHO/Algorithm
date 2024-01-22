//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2024/01/22.
//

import Foundation

func solution(_ s:String) -> [Int] {
    var dictionary: [String: Int] = [:]
    var answer: [Int] = []
    var array_s = Array(s)
    
    for index in 0...s.count - 1  {
        if !dictionary.keys.contains(String(array_s[index])) {
            answer.append(-1)
        } else {
            answer.append(index - (dictionary[String(array_s[index])] ?? 0))
        }
        dictionary.updateValue(index, forKey: String(String(array_s[index])))
    }
    
    return answer
}
