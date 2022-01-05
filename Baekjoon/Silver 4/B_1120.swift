//
//  main.swift
//  codingTest
//
//  Created by 정건호 on 2021/01/05.
//

import Foundation

let input = readLine()!.split(separator: " ").map { String($0) }

let word1 = input[0]
let word2 = input[1]
var answer = 50

if word1.count == word2.count {
    answer = 0
    for i in 0...word1.count-1 {
        if word1[word1.index(word1.startIndex, offsetBy: i)] != word2[word2.index(word2.startIndex, offsetBy: i)] {
            answer += 1
        }
    }
} else {
    if word2.contains(word1) {
        answer = 0
    } else {
        for i in 0...word2.count - word1.count {
            var min = 0
            for j in 0...word1.count-1 {
                if word1[word1.index(word1.startIndex, offsetBy: j)] != word2[word2.index(word2.startIndex, offsetBy: i+j)] {
                    min += 1
                }
            }
            if min < answer {
                answer = min
            }
        }
    }
}
print(answer)
