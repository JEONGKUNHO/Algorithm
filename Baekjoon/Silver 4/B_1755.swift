//
//  main.swift
//  codingTest
//
//  Created by 정건호 on 2021/01/07.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

let M = input[0]
let N = input[1]
var dicWord : Dictionary = [String:Int]()
var arrWord : [String] = []
for i in M...N {
    var tempWord = ""
    for j in 0...String(i).count-1 {
        if String(i)[String(i).index(String(i).startIndex, offsetBy: j)] == "0" {
            tempWord += "zero"
        } else if String(i)[String(i).index(String(i).startIndex, offsetBy: j)] == "1" {
            tempWord += "one"
        } else if String(i)[String(i).index(String(i).startIndex, offsetBy: j)] == "2" {
            tempWord += "two"
        } else if String(i)[String(i).index(String(i).startIndex, offsetBy: j)] == "3" {
            tempWord += "three"
        } else if String(i)[String(i).index(String(i).startIndex, offsetBy: j)] == "4" {
            tempWord += "four"
        } else if String(i)[String(i).index(String(i).startIndex, offsetBy: j)] == "5" {
            tempWord += "five"
        } else if String(i)[String(i).index(String(i).startIndex, offsetBy: j)] == "6" {
            tempWord += "six"
        } else if String(i)[String(i).index(String(i).startIndex, offsetBy: j)] == "7" {
            tempWord += "seven"
        } else if String(i)[String(i).index(String(i).startIndex, offsetBy: j)] == "8" {
            tempWord += "eight"
        } else if String(i)[String(i).index(String(i).startIndex, offsetBy: j)] == "9" {
            tempWord += "nine"
        }
    }
    
    dicWord.updateValue(i, forKey: tempWord)
    arrWord.append(tempWord)
}
arrWord.sort()
var count = 0
for i in arrWord {
    if count % 10 == 0 && count != 0 {
        print()
    }
    count += 1
    print(dicWord[i]!, terminator: " ")
}
