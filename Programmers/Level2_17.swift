import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var dic: [String: Int] = [:]
    var answer = 0
    
    for clothe in clothes {
        dic.updateValue((dic[clothe[1]] ?? 0) + 1, forKey: clothe[1])
    }
    
    answer += dic.map { $0.value + 1 }.reduce(1, *)
    
    return answer - 1
}
