//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/01/27.
//

import Foundation

let N = Int(readLine()!)!
var arr: [String: (Int, Int, Int)] = [:]

for _ in 0...N-1 {
    let input = readLine()!.split(separator: " ").map { String($0) }
    let name = input[0]
    let korean = Int(input[1])!
    let english = Int(input[2])!
    let math = Int(input[3])!
    arr.updateValue((korean, english, math), forKey: name)
}

let new_arr = arr.sorted(by: {
    if $0.value.0 == $1.value.0 {
        if $0.value.1 == $1.value.1 {
            if $0.value.2 == $1.value.2 {
                return $0.key < $1.key
            } else {
                return $0.value.2 > $1.value.2
            }
        } else {
            return $0.value.1 < $1.value.1
        }
    } else {
        return $0.value.0 > $1.value.0
    }
})

for i in new_arr {
    print(i.key)
}
