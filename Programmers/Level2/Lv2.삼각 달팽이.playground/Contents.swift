import Foundation

func solution(_ n:Int) -> [Int] {
    var resultArray = [[Int]]()
    var dx = [1,0]
    var dy = [0,1]
    var start = [-1,0]
    var limit = 0
    for i in 1...n {
        limit = limit + i
    }

    for i in 0..<n {
        var row = [Int]()
        for j in 0..<n {
            if j <= i {
                row.append(-1)
            } else {
                row.append(0)
            }
        }
        resultArray.append(row)
    }
    
    
    for num in 1...limit {
        var x = start[0]
        var y = start[1]
        
        if x-1 >= 0 && x-1 < n && y-1 >= 0 && y-1 < n &&  resultArray[x-1][y] != -1 && resultArray[x-1][y-1] == -1 {
            start = [x-1, y-1]
            resultArray[x-1][y-1] = num
            continue
            
        }
        
        for i in 0...1 {
            //엑스 와이 값에 속하고, 값이 1인 경우
            x = start[0] + dx[i]
            y = start[1] + dy[i]
            if x >= 0 && x < n && y >= 0 && y < n && resultArray[x][y] == -1  {
                start = [x,y]
                resultArray[x][y] = num
                break
            }
        }
        
    }
    let flattenedArray = resultArray.flatMap { $0.filter { $0 != 0 } }

    return flattenedArray
}

solution(5)
