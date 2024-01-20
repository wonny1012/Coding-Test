import Foundation


//후보키
var numArr: [[Int]] = [] // 조합으로 구한 경우의 수
func solution(_ relation:[[String]]) -> Int {
    // 1. 컬럼이 짝 지을 수 있는 경우의 수 다 구해주기
    for i in 0..<relation[0].count{
        combination(i, relation[0].count, [])
    }
    print(numArr)
    // 2
    numArr.sort{ $0.count < $1.count}
    
    var i = 0
    while i < numArr.count{
        var arr: [String] = []
        // 3. 컬럼이 유일한지 판별해줍니다.
        for m in relation.indices{
            var k = ""
            for n in numArr[i].indices{
                k += relation[m][numArr[i][n]]
            }
            if arr.contains(k){ // contain을 사용하여 유일한지 체크
                break // 포함하고 있다면 break
            }else{ // 포함하지 않는다면 append
                arr.append(k)
            }
        }
        
        // 4
        if arr.count == relation.count{ // arr과 튜플의 수가 같을 때 즉 다 유일할 때
            var c = 0
            
            while c < numArr.count{
                var cnt = 0
                for l in numArr[i].indices{ // 해당 컬럼을 가지고 있는지 체크
                    if numArr[c].contains(numArr[i][l]){
                        cnt += 1
                    }
                }
               
                if numArr[i] != numArr[c] && cnt == numArr[i].count{ // 만약 다 가지고 있다면
                    numArr.remove(at: c) // 제거
                }else{
                    c += 1
                }
            }
            i += 1
        }else{ // 유일하지 않다면 제거
            numArr.remove(at: i)
        }
    }
    
    return numArr.count
}
// 조합
func combination(_ s: Int, _ cnt: Int, _ arr: [Int]){
    if s == cnt {
        numArr.append(arr)
        return
    }else {
        var arr = arr
        for i in s..<cnt{
            arr.append(s)
            combination(i + 1, cnt, arr)
            arr.removeLast()
        }
    }
}



//Queue값 이용
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
    let M = newboard[0].count
    let N = newboard.count
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
            // print(queue)
            let (qx, qy) = queue.removeFirst()
            // print(queue)
            // a += 1

            if newboard[qx][qy] == "G" {
                return visited[qx][qy]
            }

            for i in 0..<4 {
                var nx = qx
                var ny = qy
          
                while true {
                    nx += dx[i]
                    ny += dy[i]
                    // print(i,nx,ny)

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


//미로탈출
import Foundation

func solution(_ maps:[String]) -> Int {
    
    let dx = [0, 0, -1, 1]
    let dy = [-1, 1, 0, 0]
    var start: (Int, Int) = (0, 0)
    var lever: (Int, Int) = (0, 0)
    var mapArr: [[Character]] = []
    
    
    for (i, low) in maps.enumerated() {
        if let j = Array(low).firstIndex(of: "S") {
            start = (j, i)
        }
        if let j = Array(low).firstIndex(of: "L") {
            lever = (j, i)
        }
        mapArr.append(Array(low))
    }
    
    func bfs(start: (Int, Int), end: String) -> Int? {
        var distance: [[Int]] = Array(repeating: [Int](repeating: -1, count: maps[0].count),
                                      count: maps.count)
        var queue: [(Int, Int)] = []
        distance[start.1][start.0] = 0
        queue.append(start)
        
        while !queue.isEmpty {
            let (qx, qy) = queue.removeFirst()
            for i in 0..<4 {
                let nx = qx + dx[i]
                let ny = qy + dy[i]
                if 0..<maps[0].count ~= nx && 0..<maps.count ~= ny &&
                    mapArr[ny][nx] != "X" && distance[ny][nx] == -1 {
                    if mapArr[ny][nx] == Character(end) {
                        return distance[qy][qx] + 1
                    }
                    distance[ny][nx] = distance[qy][qx] + 1
                    queue.append((nx, ny))
                }
            }
        }
        return nil
    }
    
    guard let time1 = bfs(start: start, end: "L") else { return -1 }
    guard let time2 = bfs(start: lever, end: "E") else { return -1 }
    
    return time1 + time2
}
