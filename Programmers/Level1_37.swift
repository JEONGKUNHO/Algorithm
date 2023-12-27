//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2023/12/27.
//

import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var getReportedDic: [String: Int] = [:]
    var getMailDic: [String: Int] = [:]
    var filteredReport = Array(Set(report))
    
    id_list.forEach {
        getReportedDic.updateValue(0, forKey: $0)
        getMailDic.updateValue(0, forKey: $0)
    }
    
    filteredReport.forEach {
        if let getReportedPerson = $0.components(separatedBy: " ").last {
            getReportedDic.updateValue((getReportedDic[getReportedPerson] ?? 0) + 1, forKey: getReportedPerson)
        }
    }
    
    let suspendedIDs = getReportedDic.filter { $0.value >= k }.keys
    
    filteredReport.forEach {
        if let reportPerson = $0.components(separatedBy: " ").first,
           let reportedPerson = $0.components(separatedBy: " ").last,
           suspendedIDs.contains(reportedPerson){
            getMailDic.updateValue((getMailDic[reportPerson] ?? 0) + 1, forKey: reportPerson)
        }
    }
    
    return id_list.map { getMailDic[$0] ?? 0 }
}
