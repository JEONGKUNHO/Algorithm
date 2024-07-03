import Foundation

func solution(_ s:String) -> Int {
    var stack: [Character] = []
    
    for i in Array(s) {
        if stack.isEmpty || stack.last != i {
            stack.append(i)
        } else {
            stack.removeLast()
        }
    }

    return stack.isEmpty ? 1 : 0
}
