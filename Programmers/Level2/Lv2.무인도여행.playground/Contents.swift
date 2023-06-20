import Foundation

func solution(_ maps:[String]) -> [Int] {
    //이차 배열로 정렬
    let rows = maps.count
    let cols = maps[0].count
    let dx = [-1, 1, 0, 0]
    let dy = [0, 0, -1, 1]
    //빈배열로 방문한거 표시
    var visited = [[Bool]](repeating: [Bool](repeating: false, count: cols), count: rows)
    var graph: [[Character]] = []
    //이차 배열로 정렬
    for i in maps{
            var rowArray: [Character] = []
            for num in i {
                rowArray.append(num)
            }
        graph.append(rowArray)
        }

    func bfs(x: Int, y: Int) -> Int {
        visited[x][y] = true
        var queue: [(Int, Int)] = [(x, y)]
        var sum = 0
        
        while !queue.isEmpty {
            let (x, y) = queue.removeFirst()
            sum += Int(String(graph[x][y]))!
            for i in 0..<4 {
                let nx = x + dx[i]
                let ny = y + dy[i]
                
                if 0..<rows ~= nx && 0..<cols ~= ny &&
                    graph[nx][ny] != "X" && !visited[nx][ny] {
                    queue.append((nx, ny))
                    visited[nx][ny] = true
                }
            }
        }
        return sum
    }
 
    var result = [Int]()
    for i in 0..<rows {
        for j in 0..<cols {
            if visited[i][j] || graph[i][j] == "X" { continue }
            result.append(bfs(x: i, y: j))
        }
    }
    
    return result.isEmpty ? [-1] : result.sorted()
}

solution(["X591X","X1X5X","X231X", "1XXX1"])



