//
//  main.swift
//  codingTest
//
//  Created by 정건호 on 2021/09/30.
//

import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var result : [Int] = []
    var rightNum : Int = 0
    var checkNum : Int = 0
    Loop1 : for i in lottos {
        if i == 0{
            checkNum = checkNum+1
        }
        Loop2 : for j in win_nums{
            if (i==j){
                rightNum = rightNum+1
                break Loop2
            }
        }
    }
    switch rightNum+checkNum {
    case 6:
        result.append(1)
    case 5:
        result.append(2)
    case 4:
        result.append(3)
    case 3:
        result.append(4)
    case 2:
        result.append(5)
    default:
        result.append(6)
    }
    switch rightNum {
    case 6:
        result.append(1)
    case 5:
        result.append(2)
    case 4:
        result.append(3)
    case 3:
        result.append(4)
    case 2:
        result.append(5)
    default:
        result.append(6)
    }
    return result
}
