//
//  main.swift
//  codingTest
//
//  Created by 정건호 on 2021/01/08.
//

import Foundation

let N = Int(readLine()!)!
let input = readLine()!

var index: Array = [0,0]
var startDir = 3  // 1 - 북 , 2 - 동 , 3 - 남 , 4 - 서
var walkRoad: [[Int]] = [[0,0]]
for i in input {
    if i == "F" && startDir == 1 {
        index[0] += -1
        walkRoad.append(index)
    } else if i == "F" && startDir == 2 {
        index[1] += 1
        walkRoad.append(index)
    } else if i == "F" && startDir == 3 {
        index[0] += 1
        walkRoad.append(index)
    } else if i == "F" && startDir == 4 {
        index[1] += -1
        walkRoad.append(index)
    } else if i == "R" {
        startDir += 1
        if startDir == 5 {
            startDir = 1
        }
    } else if i == "L" {
        startDir -= 1
        if startDir == 0 {
            startDir = 4
        }
    }
    
}

var xMin = 1000000
var yMin = 1000000
for i in walkRoad {
    if i[0] <= xMin {
        xMin = i[0]
    }
    if i[1] <= yMin {
        yMin = i[1]
    }
}
if xMin < 0 {
    for i in 0...walkRoad.count - 1 {
        walkRoad[i][0] += xMin * -1
    }
}
if yMin < 0 {
    for i in 0...walkRoad.count - 1 {
        walkRoad[i][1] += yMin * -1
    }
}

var xMax = -1
var yMax = -1
for i in walkRoad {
    if i[0] >= xMax {
        xMax = i[0]
    }
    if i[1] >= yMax {
        yMax = i[1]
    }
}

var answer = [[String]](repeating: Array(repeating: "#",count: yMax+1 ), count: xMax+1)

for x in 0...xMax {
    for y in 0...yMax {
        if walkRoad.contains([x,y]) {
            answer[x][y] = "."
        }
        print(answer[x][y], terminator: "")
    }
    print()
}

