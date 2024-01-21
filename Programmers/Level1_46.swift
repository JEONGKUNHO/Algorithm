//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2024/01/21.
//

import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var cola = n
    var answer = 0
    
    while cola >= a {
        answer += ((cola / a) * b)
        cola = cola - ((cola / a) * a) + ((cola / a) * b)
    }
    
    return answer
}
