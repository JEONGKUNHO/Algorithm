//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2023/06/13.
//

import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var scores: [Int] = []
    var dictionary: [String: Int] = [:]
    
    for index in 0...name.count - 1 {
        dictionary.updateValue(yearning[index], forKey: name[index])
    }
    
    photo.forEach { people in
        var score = 0
        for person in people {
            score += dictionary[person] ?? 0
        }
        scores.append(score)
    }
    return scores
}
