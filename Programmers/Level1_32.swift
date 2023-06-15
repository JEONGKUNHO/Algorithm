//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2023/06/15.
//

import Foundation

func solution(_ X: String, _ Y: String) -> String {
    var result: [String] = []
    
    for number in 0...9 {
        let xCount = X.filter { String($0) == String(number) }.count
        let yCount = Y.filter { String($0) == String(number) }.count
        result += (Array(repeating: String(number), count: min(xCount, yCount)))
    }
    return result.isEmpty
    ? "-1"
    : result.first == "0" && result.last == "0"
    ? "0"
    : result.sorted(by: >).joined()
}
