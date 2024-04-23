import Foundation

func solution(_ s:String) -> String {
    var array = s.split(separator: " ").map { Int($0)! }
    return "\(array.min()!) \(array.max()!)"
}
