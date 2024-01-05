//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2024/01/06.
//

import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var stagesFailureRate: [(Int, Double)] = []
    
    for i in 1...N {
        var triedPeople = 0
        var tryingPeople = 0
        
        for j in 0...stages.count - 1 {
            if stages[j] >= i {
                triedPeople += 1
                if stages[j] == i {
                    tryingPeople += 1
                }
            }
        }
        
        if triedPeople == 0 {
            stagesFailureRate.append((i, 0))
        } else {
            stagesFailureRate.append((i, Double(tryingPeople) / Double(triedPeople)))
        }
    }
    
    return stagesFailureRate.sorted(by: { $0.1 > $1.1 }).map { $0.0 }
}
