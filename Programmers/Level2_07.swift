import Foundation

func solution(_ s:String) -> [Int] {
    var s = s
    var answer:[Int] = []
    var array = s.dropFirst(2).dropLast(2).components(separatedBy: "},{").sorted { $0.count < $1.count }
    
    for i in array {
        for j in String(i).components(separatedBy: ",").map({ Int($0)! }) {
            if !answer.contains(j) {
                answer.append(j)
            }
        }
    }
    
    return answer
}
