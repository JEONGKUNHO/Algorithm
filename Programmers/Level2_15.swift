import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var dic: [String: Int] = [:]
    var temp: [String: Int] = [:]
    var answer = 0
    
    for i in 0..<want.count {
        dic.updateValue(number[i], forKey: want[i])
    }
    
    for i in 0...discount.count - 10 {
        for j in i..<i+10 {
            temp.updateValue((temp[discount[j]] ?? 0) + 1, forKey: discount[j])
        }
        if temp == dic {
            answer += 1
        }
        temp = [:]
    }
    
    
    return answer
}
