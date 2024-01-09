//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2024/01/09.
//

import Foundation

func solution(_ friends:[String], _ gifts:[String]) -> Int {
    var tuple: [(String, Int)] = []
    
    let giveFriends = gifts.map { $0.components(separatedBy: " ").first }
    let receiveFriends = gifts.map { $0.components(separatedBy: " ").last }
    
    var result: [String: Int] = [:]
    
    for friend in friends {
        let giveCount = giveFriends.filter { $0 == friend }.count
        let receiveCount = receiveFriends.filter { $0 == friend }.count
        tuple.append((friend, giveCount - receiveCount))
        result.updateValue(0, forKey: friend)
    }
    
    for i in 0...friends.count - 2 {
        for j in i+1...friends.count - 1 {
            let firstCase = "\(friends[i]) \(friends[j])"
            let secondCase = "\(friends[j]) \(friends[i])"
            
            let firstCaseCount = gifts.filter { $0 == firstCase }.count
            let secondCaseCount = gifts.filter { $0 == secondCase }.count
            
            if firstCaseCount > secondCaseCount {
                result.updateValue((result[friends[i]] ?? 0) + 1, forKey: friends[i])
            } else if firstCaseCount < secondCaseCount {
                result.updateValue((result[friends[j]] ?? 0) + 1, forKey: friends[j])
            } else if firstCaseCount == secondCaseCount {
                if let firstGiftValue = tuple.filter({ $0.0 == friends[i] }).first?.1,
                   let secondGiftValue = tuple.filter({ $0.0 == friends[j] }).first?.1 {
                    if firstGiftValue > secondGiftValue {
                        result.updateValue((result[friends[i]] ?? 0) + 1, forKey: friends[i])
                    } else if firstGiftValue < secondGiftValue {
                        result.updateValue((result[friends[j]] ?? 0) + 1, forKey: friends[j])
                    }
                }
            }
        }
    }
 
    return result.max(by: { $0.value < $1.value })?.value ?? 0
}
