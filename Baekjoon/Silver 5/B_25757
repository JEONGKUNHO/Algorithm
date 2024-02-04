//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2024/02/04.
//

import Foundation

let input = readLine()!.split(separator: " ")
let N = input[0], game = input[1]
var set: Set<String> = []

for _ in 0..<Int(N)! {
    let name = readLine()!
    set.insert(name)
}

if game == "Y" {
    print(set.count)
} else if game == "F" {
    print(set.count / 2)
} else if game == "O" {
    print(set.count / 3)
}
