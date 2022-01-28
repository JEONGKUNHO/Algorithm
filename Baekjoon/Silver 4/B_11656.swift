//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/01/28.
//

import Foundation

var S = readLine()!
var arr: [String] = []
for _ in 0...S.count - 1 {
    arr.append(S)
    S.remove(at: S.startIndex)
}
for i in arr.sorted(by: <) {
    print(i)
}
