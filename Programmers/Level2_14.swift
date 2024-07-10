func solution(_ n:Int) -> Int {
  
    var arr = [1,2]
    
    if n == 1 {
        return 1
    } else if n == 2 {
        return 2
    } else {
        for i in 2..<n {
            arr.append((arr[i-2] + arr[i-1]) % 1234567)
        }
    }
    
    return arr.last!
}
