import Foundation

func solution(_ n:Int, _ edge:[[Int]]) -> Int {
    // 그래프 생성
    var graph = [Int: [Int]]()
 
    for e in edge {
        graph[e[0], default: []].append(e[1])
        graph[e[1], default: []].append(e[0])
    }
    
       print(graph)

    // BFS를 위한 큐와 방문 여부 배열
    var queue = [(node: Int, distance: Int)]()
    var visited = Array(repeating: false, count: n + 1)
    
    // 1번 노드를 시작으로 BFS 탐색
    queue.append((1, 0))
    visited[1] = true
    var maxDistance = 0
    var maxCount = 0
    
    while !queue.isEmpty {
        let (node, distance) = queue.removeFirst()
        
        // 최단 거리 갱신 및 최단 거리를 가진 노드 개수 카운트
        if distance > maxDistance {
            maxDistance = distance
            maxCount = 1
        } else if distance == maxDistance {
            maxCount += 1
        }
        
        // 인접한 노드들을 큐에 추가
        // graph[n]은 index가 아니라 Key값이다.
        for neighbor in graph[node] ?? [] {
            if !visited[neighbor] {
                visited[neighbor] = true
                queue.append((neighbor, distance + 1))
            }
        }
    }
    
    return maxCount
}
