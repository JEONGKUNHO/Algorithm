//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2023/06/12.
//

import Foundation

/*
 n - 벽의 길이
 m - 롤러의 길이
 selection - 칠해야 하는 벽의 위치
 */
 
func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var wall = Array(repeating: 1, count: n)
    var paintCount = 0
    
    // 칠해야 하는 벽의 위치 설정
    for index in section {
        wall[index - 1] = 0
    }
    
    while true {
        // 칠할 벽이 없으면 break
        if !wall.contains(0) { break }
        
        // 롤러를 시작할 첫 벽이 칠해져 있으면 제거 후 continue
        if wall[0] == 1 {
            wall.removeFirst()
            continue
        }
        
        // 남은 벽이 롤러보다 적으면서 더 칠할 벽이 있으면 벽칠 후 종료
        if wall.count < m {
            if wall.contains(0) {
                paintCount += 1
            }
            break
        } else {
            // 벽칠과 동시에 배열에서 제거
            wall.removeSubrange(0...m-1)
            paintCount += 1
        }
    }
    return paintCount
}
