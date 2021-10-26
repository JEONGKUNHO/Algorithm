//
 //  main.swift
 //  codingTest
 //
 //  Created by 정건호 on 2021/10/26.
 //

    import Foundation

    let N = Int(readLine()!)!
    var arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    var result : [Int] = []
    arr.sort(by: >)

    var num = 2
    for i in arr {
        result.append(i+num)
        num += 1
    }

    print(result.max()!)

