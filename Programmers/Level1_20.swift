//
 //  main.swift
 //  codingTest
 //
 //  Created by 정건호 on 2021/10/27.
 //

import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var nowMoney = money
    for i in 1...count {
        nowMoney = nowMoney - price * i
    }
    
    if nowMoney >= 0 {
        return 0
    }
    else {
        return Int64(nowMoney) * -1
    }
}
