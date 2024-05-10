import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var dictionary: [Int: Int] = [:]
    var count = 0
    var answer = 0
    
    for i in tangerine {
        if let value = dictionary[i] {
         dictionary.updateValue(value + 1, forKey: i)
        } else {
            dictionary.updateValue(1, forKey: i)
        }
    }
    
    for i in dictionary.sorted { $0.value > $1.value } {
        answer += 1
        count += i.value
        if count >= k {
            break
        }
    }
    
    return answer
}
