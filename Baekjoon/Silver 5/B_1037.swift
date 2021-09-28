//
//  main.swift
//  codingTest
//
//  Created by 정건호 on 2021/09/28.
//

import Foundation

let numOfCount = Int(readLine()!)
let nums = readLine()!.components(separatedBy: " ").map {Int($0)!}

let result : Int = nums.min()!*nums.max()!

print(result)
