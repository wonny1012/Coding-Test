import Foundation

func solution(_ n:Int) -> [Int] {
    var resultArray = [[Int]]()
    var dx = [1, 0, -1]
    var dy = [0, +1, -1]
    var start = [-1,0]
    var check = false
    var num = 1
    var limit = 0
    for i in 1...4 {
        limit = limit + i
    }


    for i in 0..<n {
        var row = [Int]()
        for j in 0..<n {
            if j <= i {
                row.append(1)
            } else {
                row.append(0)
            }
        }
        resultArray.append(row)
    }
    
    while num != limit+1 {
        for i in 0...2 {
            //엑스 와이 값에 속하고, 값이 1인 경우
            var x = start[0] + dx[i]
            var y = start[1] + dy[i]
            if x >= 0 && x < n && y >= 0 && y < n && resultArray[x][y] == 1  {
                start = [x,y]
                resultArray[x][y] = num
                num += 1
                break
            } else {
            }
            
        }
    }

    let flattenedArray = resultArray.flatMap { $0.filter { $0 != 0 } }
    print(flattenedArray)
    return flattenedArray
}


solution(5)
