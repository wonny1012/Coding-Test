// import Foundation

// func solution(_ N: Int, _ road: [[Int]], _ K: Int) -> Int {
//     var graph = [[Int]](repeating: [Int](repeating: 10000000, count: N), count: N)

//     for road in road {
//         let a = road[0] - 1
//         let b = road[1] - 1
//         let c = road[2]
//         graph[a][b] = min(graph[a][b], c)
//         graph[b][a] = min(graph[b][a], c)
//     }

//     for i in 0..<N {
//         graph[i][i] = 0
//     }

//     for k in 0..<N {
//         for i in 0..<N {
//             for j in 0..<N {
//                 graph[i][j] = min(graph[i][j], graph[i][k] + graph[k][j])
//             }
//         }
//     }

//     var count = 0
//     for distance in graph[0] {
//         if distance <= K {
//             count += 1
//         }
//     }

//     return count
// }


import Foundation

func solution(_ N: Int, _ road: [[Int]], _ k: Int) -> Int {
    var reachable = Array(repeating: false, count: N)
    var roads = [[Int]](repeating: [Int](repeating: 0, count: N), count: N)

    for r in road {
        let u = r[0] - 1
        let v = r[1] - 1
        let w = r[2]

        roads[u][v] = w
        roads[v][u] = w
    }

    dfs(0, 0, k, &reachable, roads)

    return reachable.filter { $0 }.count
}

func dfs(_ node: Int, _ dist: Int, _ k: Int, _ reachable: inout [Bool], _ roads: [[Int]]) {
    if dist > k {
        return
    }

    reachable[node] = true

    for (nei, weight) in roads[node].enumerated() {
        if weight == 0 || reachable[nei] {
            continue
        }

        dfs(nei, dist + weight, k, &reachable, roads)
    }
}
