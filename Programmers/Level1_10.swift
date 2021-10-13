//
 //  main.swift
 //  codingTest
 //
 //  Created by 정건호 on 2021/10/13.
 //


import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result : [Int] = []
    var tempArray : [Int] = []
    for temp in commands {
        tempArray = []
        tempArray.append(contentsOf: array[temp[0]-1...temp[1]-1])
        tempArray.sort()
        result.append(tempArray[temp[2]-1])
        
    }
    
    
    return result
}
