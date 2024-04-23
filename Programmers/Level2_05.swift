import Foundation

func solution(_ s:String) -> Bool
{
    var stack: [String] = []
    var sArray = Array(s)
    
    for i in sArray {
        if i == "(" {
            stack.append(String(i))
        } else if i == ")" {
            if stack.isEmpty {
                stack.append(String(i))
                break
            } else {
                if stack.last! == "(" {
                    stack.removeLast()
                } else {
                    stack.append(String(i))
                }
            }
        }
    }
    
    return stack.count == 0
}
