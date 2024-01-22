//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2024/01/22.
//

import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var array_t = Array(t)
    var array: [String] = []
    
    for index in 0...t.count - p.count {
        array.append(String(array_t[index..<index + p.count]))
    }
    
    return array.filter { $0 <= p }.count
}
