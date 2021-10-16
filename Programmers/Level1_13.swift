//
 //  main.swift
 //  codingTest
 //
 //  Created by 정건호 on 2021/10/16.
 //


func solution(_ strings:[String], _ n:Int) -> [String] {
    var arr : [String] = []
    var stringsTemp : [String] = []
    stringsTemp = strings
    var result : [String] = []
    for i in strings{
        arr.append(String(i[i.index(i.startIndex, offsetBy: n)]))
    }
    arr.sort()
    stringsTemp.sort()
    for i in arr {
        for j in 0...strings.sorted().count-1 {
            if(i == String(stringsTemp[j][stringsTemp[j].index(stringsTemp[j].startIndex, offsetBy: n)])){
                result.append(stringsTemp[j])
                stringsTemp.remove(at: j)
                break
            }
        }
    }
    
    return result
}
