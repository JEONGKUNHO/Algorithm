import Foundation

func solution(_ s:String) -> [Int] {
  
    var s = s
    s.removeFirst(2)
    s.removeLast(2)
    var arr = s.components(separatedBy: "},{").sorted { $0.count < $1.count}
    var answer: [Int] = []
    
    for i in arr {
        var temp = i.split(separator: ",").map { Int($0)! }
        temp.forEach { if !answer.contains($0) { answer.append($0) } }
    }
    
    return answer
}
