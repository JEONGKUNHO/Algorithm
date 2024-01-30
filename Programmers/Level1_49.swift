//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2024/01/30.
//

import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var cards1 = cards1
    var cards2 = cards2
    
    for word in goal {
        if !cards1.isEmpty && cards1[0] == word {
            cards1.removeFirst()
        } else if !cards2.isEmpty && cards2[0] == word {
            cards2.removeFirst()
        } else {
            return "No"
        }
    }
    
    return "Yes"
}
