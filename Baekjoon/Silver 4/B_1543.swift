//
//  main.swift
//  codingTest
//
//  Created by 정건호 on 2021/01/06.
//

import Foundation

let document = readLine()!
let word = readLine()!
var answer = 0
var Index: [Int] = []
if document.count < word.count {
    print(answer)
} else {
    for i in 0...document.count - word.count {
        var tempWord = ""
        var tempIndex: [Int] = []
        for j in 0...word.count-1 {
            tempWord.append(document[document.index(document.startIndex, offsetBy: i+j)])
            tempIndex.append(i+j)
        }
        if word == tempWord && !Index.contains(i) {
            answer += 1
            Index = tempIndex
        }
    }
    print(answer)
}


