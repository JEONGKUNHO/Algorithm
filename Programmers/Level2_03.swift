import Foundation

func solution(_ number:String, _ k:Int) -> String {
    var numberArray = Array(number.map { Int(String($0))! })
    var stack: [Int] = []
    var removeCount = 0
    
    for i in numberArray {
        while !stack.isEmpty && stack.last! < i && removeCount < k {
            stack.removeLast()
            removeCount += 1
            if removeCount == k { break }
        }   
        stack.append(i)
    }
    
    if removeCount < k {
        for _ in 0..<k-removeCount {
            stack.removeLast()
        }
    }

    return stack.map { String($0) }.reduce("", +)
}
