//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2024/01/04.
//

import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var result = 0
    var board = board
    var basket: [Int] = []
    
    moves.forEach { move in
        for index in 0...board.count - 1 {
            if board[index][move-1] != 0 {
                if let last = basket.last,
                last == board[index][move-1] {
                    result += 2
                    basket.removeLast()
                } else {
                    basket.append(board[index][move-1])
                }
                board[index][move-1] = 0
                break
            }
        }
    }
    return result
}
