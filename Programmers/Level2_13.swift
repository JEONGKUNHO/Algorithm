import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let sum = brown + yellow
    var num = brown
    var answer: [Int] = []
    
    while true {
        if sum % num == 0 && ((num*2) + ((sum/num)-2)*2) == brown {
            answer.append(num)
            answer.append(sum/num)
            break
        } else {
            num -= 1
        }
    }
    
    return answer
}
