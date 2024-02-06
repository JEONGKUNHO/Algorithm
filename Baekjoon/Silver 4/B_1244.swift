//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2024/02/06.
//

import Foundation

let N = Int(readLine()!)!
var switchs = Array(readLine()!.split(separator: " ").map { Int($0)! })
let students = Int(readLine()!)!

for _ in 0..<students {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let sex = input[0] // 1 - 남학생(배수 toggle), 2 - 여학생(좌우대칭 toggle)
    let num = input[1]
    
    if sex == 1 {
        for j in stride(from: num, through: N, by: num) {
            switchs[j-1] = switchs[j-1] == 0 ? 1 : 0
        }
    } else {
        var increase = 1
        let index = num - 1
        switchs[index] = switchs[index] == 0 ? 1 : 0
        while index - increase >= 0 && index + increase < N {
            if switchs[index - increase] != switchs[index + increase] { break }
            switchs[index - increase] = switchs[index - increase] == 0 ? 1 : 0
            switchs[index + increase] = switchs[index + increase] == 0 ? 1 : 0
            increase += 1
        }
    }
}

for index in 0..<switchs.count {
    if index != 0 && index % 20 == 0 {
        print()
    }
    print(switchs[index], terminator: " ")
}
