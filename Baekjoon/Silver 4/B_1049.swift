//
//  main.swift
//  codingTest
//
//  Created by 정건호 on 2021/01/04.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0] //끊어진 기타줄
let M = input[1] // 기타줄 브랜드 수
var setPriceMin = 100000
var eaPriceMin = 100000
var answer = 1000000
var priceArr : [[Int]] = Array(repeating: Array(repeating: 1,count: 2 ), count: M)


// 인덱스 0은 6개 묶여있는 세트 가격 , 1은 낱개 가격
for i in 0...M-1 {
    let prices = readLine()!.split(separator: " ").map { Int($0)! }
    priceArr[i][0] = prices[0]
    priceArr[i][1] = prices[1]
}

for i in priceArr {
    if i[0] <= setPriceMin {
        setPriceMin = i[0]
    }
    if i[1] <= eaPriceMin {
        eaPriceMin = i[1]
    }
}

if setPriceMin > eaPriceMin * 6 {
    answer = eaPriceMin * N
} else {
    let div = N / 6
    let mod = N % 6
    if (div+1) * setPriceMin > div * setPriceMin + mod * eaPriceMin {
        answer = div * setPriceMin + mod * eaPriceMin
    } else {
        answer = (div+1) * setPriceMin
    }
    
}
print(answer)
