//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2023/12/24.
//

import Foundation

func solution(_ X:String, _ Y:String) -> String {
    var result = String()
    
    for i in 0...9 {
        var minCount = min(X.filter { $0 == Character(String(i)) }.count, Y.filter { $0 == Character(String(i)) }.count)
        
        if minCount != 0 {
            result += String(repeating: Character(String(i)), count: minCount)
        }
    } 
    
    return result.isEmpty
    ? "-1"
    : result.first == "0" && result.last == "0"
    ? "0"
    : (result.sorted(by: >).map { String($0) }.joined())
}
