//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2024/02/02.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0], M = input[1]
var dictionary: [String: Int] = [:]

for _ in 0..<N {
    let word = readLine()!
    if word.count >= M {
        if dictionary.keys.contains(word) {
            dictionary.updateValue(dictionary[word]! + 1, forKey: word)
        } else {
            dictionary.updateValue(1, forKey: word)
        }
    }
}

dictionary.sorted(by: { (first, second) -> Bool in
    if first.value == second.value {
        if first.key.count == second.key.count  {
            return first.key < second.key
        } else {
            return first.key.count > second.key.count
        }
    } else {
        return first.value > second.value
    }
}).forEach { print($0.key) }
