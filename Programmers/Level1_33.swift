//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2023/06/17.
//

import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var players = players
    var callings = callings
    var rankDictionary: [String: Int] = [:]
    
    for (rank, player) in players.enumerated() {
        rankDictionary[player] = rank
    }
    
    for rank in 0..<callings.count {
        let calledPlayer = callings[rank]
        if let rank = rankDictionary[calledPlayer] {
            let frontPlayer = players[rank - 1]
            players[rank - 1] = calledPlayer
            players[rank] = frontPlayer
            rankDictionary[calledPlayer]! -= 1
            rankDictionary[frontPlayer]! += 1
        }
    }
    
    return rankDictionary.sorted { $0.value < $1.value }.map { $0.key }
}
