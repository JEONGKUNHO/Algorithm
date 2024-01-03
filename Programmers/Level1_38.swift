//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2024/01/03.
//

import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var result = String()
    var currentRightPosition = -1
    var currentLeftPosition = -2
    
    for number in numbers {
        if [1,4,7].contains(number) {
            currentLeftPosition = number
            result += "L"
        } else if [3,6,9].contains(number) {
            currentRightPosition = number
            result += "R"
        } else {
            let leftIndex = findIndex(number: currentLeftPosition)
            let rightIndex = findIndex(number: currentRightPosition)
            let numberIndex = findIndex(number: number)
            
            if abs(leftIndex[0] - numberIndex[0]) + abs(leftIndex[1] - numberIndex[1]) ==
                abs(rightIndex[0] - numberIndex[0]) + abs(rightIndex[1] - numberIndex[1]) {
                if hand == "left" {
                    currentLeftPosition = number
                    result += "L"
                } else {
                    currentRightPosition = number
                    result += "R"
                }
            } else if abs(leftIndex[0] - numberIndex[0]) + abs(leftIndex[1] - numberIndex[1]) <
                        abs(rightIndex[0] - numberIndex[0]) + abs(rightIndex[1] - numberIndex[1]) {
                currentLeftPosition = number
                result += "L"
            } else {
                currentRightPosition = number
                result += "R"
            }
        }
    }
    return result
}

private func findIndex(number: Int) -> [Int] {
    let keypad = [
        [1,2,3],
        [4,5,6],
        [7,8,9],
        [-1,0,-2] // -1 -> *, -2 -> #
    ]
    if let firstIndex = keypad.firstIndex(where: { $0.contains(number) }),
       let secondIndex = keypad[firstIndex].firstIndex(where: { $0 == number}) {
        return [firstIndex, secondIndex]
    } else {
        return []
    }
}
