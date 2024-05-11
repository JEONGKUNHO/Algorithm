import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    var answer = 0
    
    for skill_tree in skill_trees {
        var stack = Array(skill.reversed())
        
        for i in 0..<skill_tree.count {
            var array = Array(skill_tree)
            
            if stack.contains(array[i]) {
                if array[i] != stack.last! {
                    break
                } else {
                    stack.removeLast()
                }
            }
            
            if stack.isEmpty || i == skill_tree.count - 1 {
                answer += 1
                break
            }
        }
    }
    
    return answer
}
