import Foundation

func solution(_ board: [String]) -> Int {
    var answer = 0
    
    var newboard: [[Character]] = []
    for row in board {
        var rowArray: [Character] = []
        for char in row {
            rowArray.append(char)
        }
        newboard.append(rowArray)
    }
    let N = newboard[0].count
    let M = newboard.count
    var a = 0
    
    var x = 0
    var y = 0

    for i in 0..<M {
        for j in 0..<N {
            if newboard[i][j] == "R" {
                x = i
                y = j
                break
            }
        }
    }

    let dx = [1, -1, 0, 0]
    let dy = [0, 0, 1, -1]

    func dfs() -> Int {
        var queue = [(Int, Int)]()
        queue.append((x, y))
        var visited = [[Int]](repeating: [Int](repeating: 0, count: N), count: M)
        visited[x][y] = 1

        while !queue.isEmpty {
            print(queue)
            let (qx, qy) = queue.removeFirst()
            print(queue)
            a += 1

            if newboard[qx][qy] == "G" {
                return visited[qx][qy]
            }

            for i in 0..<4 {
                var nx = qx
                var ny = qy
          
                while true {
                    nx += dx[i]
                    ny += dy[i]
                    print(i,nx,ny)

                    if nx >= 0 && nx < M && ny >= 0 && ny < N && newboard[nx][ny] == "D" {
                        nx -= dx[i]
                        ny -= dy[i]
                        break
                    }
                    if nx < 0 || nx >= M || ny < 0 || ny >= N {
                        nx -= dx[i]
                        ny -= dy[i]
                        break
                    }
                }

                if visited[nx][ny] == 0 {
                    visited[nx][ny] = visited[qx][qy] + 1
                    queue.append((nx, ny))
                }
            }
        }

        return -1
    }

    answer = dfs()

    return answer > 0 ? answer - 1 : answer
}


solution(["...D..R", ".D.G...", "....D.D", "D....D.", "..D...."])
