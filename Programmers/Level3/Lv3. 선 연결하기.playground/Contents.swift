
import Foundation

func solution(_ n:Int, _ costs:[[Int]]) -> Int {
    var parent = [Int](repeating: -1, count: n) // 각 노드의 부모를 저장하는 배열
    var edges = [(Int, Int, Int)]() // 간선을 저장하는 배열
    var totalCost = 0 // 총 비용
    
    // 크루스칼 알고리즘을 위한 함수
    func find(_ node: Int) -> Int {
        if parent[node] == -1 {
            return node
        }
        return find(parent[node])
    }
    
    // 크루스칼 알고리즘을 위한 함수
    func union(_ u: Int, _ v: Int) {
        let rootU = find(u)
        let rootV = find(v)
        parent[rootV] = rootU
    }
    
    // costs 배열을 비용에 따라 오름차순 정렬
    let sortedCosts = costs.sorted { $0[2] < $1[2] }
    
    // 정렬된 costs 배열을 순회하며 간선을 추가하고 사이클이 발생하지 않는지 확인
    for cost in sortedCosts {
        let u = cost[0]
        let v = cost[1]
        let weight = cost[2]
        
        // 사이클이 발생하지 않는 경우에만 간선을 추가하고 비용을 더함
        if find(u) != find(v) {
            union(u, v)
            totalCost += weight
        }
    }
    
    return totalCost
}

// Example usage:
let n = 4
let costs = [[0,1,1],[0,2,2],[1,2,5],[1,3,1],[2,3,8]]
let minCost = solution(n, costs)
print("Minimum cost to connect all nodes:", minCost) // 출력: Minimum cost to connect all nodes: 4
