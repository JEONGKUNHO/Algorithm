//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/02/06.
//

let NM = readLine()!.split(separator: " ").map { Int($0)! }
var dic: [String:String] = [:]
for _ in 1...NM[0] {
    let input = readLine()!.split(separator: " ").map { String($0) }
    dic[input[0]] = input[1]
}

for _ in 1...NM[1] {
    let input = readLine()!
    print(dic[input]!)
}
