//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2022/01/22.
//


import Foundation

func solution(_ a:Int, _ b:Int) -> String {
    let day = ["MON","TUE","WED","THU","FRI","SAT","SUN"]
    let month = [31,29,31,30,31,30,31,31,30,31,30,31]
    var sumOfDay = 4
    for i in 0..<a-1 {
        sumOfDay += month[i]
    }
    sumOfDay += b-1
    return day[sumOfDay%7]
}
