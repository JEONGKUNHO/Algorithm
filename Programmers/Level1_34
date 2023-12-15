//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2023/12/15.
//

import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var recipeArray: [Int] = [1, 2, 3, 1]
    var recipeString = "1, 2, 3, 1"
    var stack: [Int] = []
    var result = 0
    
    if !ingredient.description.contains(recipeString) {
        return 0
    }
    
    for i in ingredient {
        stack.append(i)
        
        if stack.suffix(4).elementsEqual(recipeArray) {
            result += 1
            stack.removeSubrange(stack.count - 4...stack.count - 1)
        }
    }
    
    return result
}
