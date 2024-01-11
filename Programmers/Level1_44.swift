//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2024/01/11.
//

import Foundation

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    var arr1Map: [String] = []
    var arr2Map: [String] = []
    
    for i in 0...n-1 {
        let map1 = makeMap(size: n, arr1[i])
        let map2 = makeMap(size: n, arr2[i])
        arr1Map.append(map1)
        arr2Map.append(map2)
    }
    
    for i in 0...n-1 {
        answer.append(decodeMap(size: n, map1: arr1Map[i], map2: arr2Map[i]))
    }
    
    return answer
}

private func makeMap(size: Int, _ number: Int) -> String {
    var binary = String(number, radix: 2)
    if size - binary.count > 0 {
        binary.insert(contentsOf: Array(repeating: "0", count: size - binary.count), at: binary.startIndex)
    }
    
    return binary
}

private func decodeMap(size: Int, map1: String, map2: String) -> String {
    var answer = String()
    let map1 = Array(map1)
    let map2 = Array(map2)
    
    for i in 0...size-1 {
        var decodeValue = String()
        if let bit1 = Int(String(map1[i])), let bit2 = Int(String(map2[i])) {
            decodeValue = String(bit1 | bit2)
        }
        answer += decodeValue == "1" ? "#" : " "
    }
    
    return answer
}
