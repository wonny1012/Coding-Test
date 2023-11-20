import UIKit
import Foundation

func solution(_ n:Int, _ paths:[[Int]], _ gates:[Int], _ summits:[Int]) -> [Int] {
    var visited = Array(repeating: Array(repeating: 0, count: n), count: n)
    var result = [[Int]]()
    //이동 경로 나타내기
    for i in paths {
        visited[i[0]-1][i[1]-1] = i[2]
        visited[i[1]-1][i[0]-1] = i[2]
    }
    //시작값, queue 설정
    // var start = [Int, Int]()
    var queue = [[Int]]()
    var score = [Int]()
    //게이트를 시작값으로 해서 돌리기
    for i in gates {
        var start = [i-1, i-1]
        if queue.isEmpty {
            queue.append(start)
        }
        //큐가 비어있을 때 까지 진행
        while !queue.isEmpty {
            start = queue.removeFirst()
            for j in 1..<n-1 {
                //방문한 기록이 없는 경우 값을 넣고 방문기록 0으로 만들기
                if visited[i-1][j] != 0 {
                    score.append(visited[i-1][j])
                    visited[i-1][j] == 0
                    
                    if summits.contains(j+1) {
                        result.append([j+1,score.max()])
                        print(result)
                        break
                    } else {
                        queue.append([i-1,j])
                    }
                }
            }
        }
        
    }
    
    
    return []
}

solution(7, [[1, 4, 4], [1, 6, 1], [1, 7, 3], [2, 5, 2], [3, 7, 4], [5, 6, 6]], [1], [2, 3])
