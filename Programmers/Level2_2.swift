//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2024/01/19.
//

import Foundation

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    var dictionary: [String: String] = [:]
    var answer: [Int] = []
    
    for record in records {
        let recordInfo = record.components(separatedBy: " ")
        if let value = dictionary[recordInfo[1]] {
            dictionary.updateValue(value + " " + recordInfo[0], forKey: recordInfo[1])
        } else {
            dictionary.updateValue((dictionary[recordInfo[1]] ?? String()) + recordInfo[0], forKey: recordInfo[1])
        }
    }
    
    for parkingTimes in dictionary.sorted(by: { $0.key < $1.key }) {
        answer.append(parkingFee(parkingTimes.value, fees: fees))
    }
    
    return answer
}

private func parkingFee(_ times: String, fees: [Int]) -> Int {
    var parkingTimes = times.components(separatedBy: " ")
    var totalParkingTime = 0
    
    if parkingTimes.count % 2 != 0 {
        parkingTimes.append("23:59")
    }
    
    for index in 0...parkingTimes.count - 1 {
        if index % 2 != 0 {
            continue
        } else {
            let exitTime = parkingTimes[index + 1].components(separatedBy: ":").map { Int($0) ?? 0 }
            let enterTime = parkingTimes[index].components(separatedBy: ":").map { Int($0) ?? 0 }
            
            totalParkingTime += ((exitTime[0] - enterTime[0]) * 60) + (exitTime[1] - enterTime[1])
        }
    }
    if totalParkingTime <= fees[0] {
        return fees[1]
    } else {
        return fees[1] + Int(ceil((Double(totalParkingTime) - Double(fees[0])) / Double(fees[2]))) * fees[3]
    }
}
