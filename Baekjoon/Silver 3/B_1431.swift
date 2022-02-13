//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/02/13.
//

import Foundation

let N = Int(readLine()!)!

var serialArr: [String] = []
for _ in 0...N-1 {
    let input = readLine()!
    serialArr.append(input)
}

func sum(_ serial: String) -> Int {
    let arr =  Array(serial).map { String($0) }
    var sum = 0
    for i in arr {
        if i >= "0" && i <= "9" {
            sum += Int(i)!
        }
    }
    return sum
}

serialArr.sort() { (first, second) -> Bool in
    if first.count == second.count {
        if sum(first) == sum(second) {
            return first < second
        } else {
            return sum(first) < sum(second)
        }
    } else {
        return first.count < second.count
    }
}

for i in serialArr {
    print(i)
}


