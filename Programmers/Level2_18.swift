import Foundation

func solution(_ s:String) -> Int {
    
    var s = Array(s)
    
    var answer = 0
    var stack: [Character] = []
    
    for i in 0..<s.count {
        stack.removeAll()
        s.append(s.removeFirst())

        for j in 0..<s.count {
            if stack.isEmpty {
                if s[j] == "]" || s[j] == ")" || s[j] == "}" {
                    break
                } else {
                    stack.append(s[j])
                }
            } else {
                if (stack.last! == "(" && s[j] == ")")
                || (stack.last! == "{" && s[j] == "}")
                || (stack.last! == "[" && s[j] == "]"){
                    stack.removeLast()
                } else {
                    stack.append(s[j])
                }
            }
            
            if stack.isEmpty && j == s.count-1 {
                answer += 1
            }
        }
    }
    
    return answer
}
