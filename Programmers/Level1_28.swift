//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/05/14.
//

import Foundation

func solution(_ new_id:String) -> String {
    let availableSpecialCharacter = ["-", "_", "."]
    var id = ""
    
    // 1,2단계
    for i in new_id.lowercased() {
        if i.isLetter || i.isNumber || availableSpecialCharacter.contains(String(i)) {
            id.append(i)
        }
    }
    
    // 3단계
    while id.contains("..") {
        id = id.replacingOccurrences(of: "..", with: ".")
    }
    
    // 4단계
    if id.first == "." {
        id.removeFirst()
    }
    
    if id.last == "." {
        id.removeLast()
    }
    
    // 5단계
    if id.isEmpty {
        id.append("a")
    }
    
    // 6단계
    if id.count >= 16 {
        id = String(id.prefix(15))
        if id.last == "." {
            id.removeLast()
        }
    }
    
    // 7단계
    if id.count <= 2 {
        while id.count != 3 {
            id.append(id.last!)
        }
    }
    
    return id
}
