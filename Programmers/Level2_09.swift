import Foundation

func solution(_ n:Int) -> Int {
    
    var number = n+1
    let countOfN = String(n, radix: 2).filter { $0 == "1" }.count
    
    while true {
        let countOfNumber = String(number, radix: 2).filter { $0 == "1" }.count
        if countOfNumber == countOfN {
            break
        }
        number += 1
    }
    
    return number
}
