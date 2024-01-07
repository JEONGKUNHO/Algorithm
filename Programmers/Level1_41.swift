//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2024/01/07.
//

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var result = n - lost.count
    var lost = lost.sorted(by: <)
    var reserve = reserve.sorted(by: <)
    var lostAndrReserve = reserve.filter { lost.contains($0) }
    
    for i in lostAndrReserve {
        lost.removeAll(where: { $0 == i })
        reserve.removeAll(where: { $0 == i })
        result += 1
    }
    
    for i in lost {
        if reserve.contains(i - 1) {
            reserve.removeAll(where: { $0 == i - 1 })
            result += 1
        } else if reserve.contains(i + 1) {
            reserve.removeAll(where: { $0 == i + 1 })
            result += 1
        }
    }
    
    return result
}
