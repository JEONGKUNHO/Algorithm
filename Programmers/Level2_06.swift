import Foundation

func solution(_ s:String) -> [Int] {
    var s = s
    var count = 0
    var zeroCount = 0

    while s != "1"{
        count += 1
        var tempS = s
        s = s.filter { $0 != "0" }
        zeroCount += (tempS.count - s.count)
        if s.count == 1 { break }
        s = transferToBinary(s.count)
    }
    
    return [count, zeroCount]
}

func transferToBinary(_ n: Int) -> String {
    var n = n
    var array: [Int] = []
    while n != 1 {
        array.insert(n % 2, at: 0)
        n = n / 2
    }
    array.insert(1, at: 0)
    return array.reduce("", { String($0) + String($1) })
}
