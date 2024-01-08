//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2024/01/08.
//

import Foundation

func solution(_ answers:[Int]) -> [Int] {
    
    let student1 = [1, 2, 3, 4, 5]
    let student2 = [2, 1, 2, 3, 2, 4, 2, 5]
    let student3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    var scoreDic: [Int: Int] = [1:0, 2:0, 3:0]
    
    for index in 0...answers.count - 1 {
        if answers[index] == student1[index % student1.count] {
            scoreDic.updateValue((scoreDic[1] ?? 0) + 1, forKey: 1)
        }
        if answers[index] == student2[index % student2.count] {
            scoreDic.updateValue((scoreDic[2] ?? 0) + 1, forKey: 2)
        }
        if answers[index] == student3[index % student3.count] {
            scoreDic.updateValue((scoreDic[3] ?? 0) + 1, forKey: 3)
        }
    }
    
    return scoreDic.filter { $0.value == scoreDic.values.max() }.map { $0.key }.sorted(by: <)
}
