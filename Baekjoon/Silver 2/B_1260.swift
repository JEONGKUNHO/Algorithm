//
//  main.swift
//  CodingTest
//
//  Created by 정건호 on 2024/02/01.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let m = input[1]
let v = input[2]
var visited = [Bool](repeating: false, count: n + 1)
var graph = [[Int]](repeating: [], count: n + 1)
var result = String()
var queue: [Int] = []

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input.first!
    let b = input.last!
    graph[a].append(b)
    graph[b].append(a)
}

graph = graph.map { $0.sorted() }

func dfs(node: Int) {
    visited[node] = true
    result += "\(node) "
    
    for nextNode in graph[node] {
        if visited[nextNode] == false {
            dfs(node: nextNode)
        }
    }
}


func bfs(node: Int) {
    visited[node] = true
    queue.removeAll(where: { $0 == node })
    result += "\(node) "
    graph[node].forEach { queue.append($0) }
    
    for nextNode in queue {
        if visited[nextNode] == false {
            bfs(node: nextNode)
        }
    }
}

// 결과 출력
dfs(node: v)
print(result)
result = String()
visited = [Bool](repeating: false, count: n + 1)
bfs(node: v)
print(result)
