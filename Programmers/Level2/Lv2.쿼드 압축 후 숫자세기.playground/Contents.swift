import Foundation

func solution(_ arr:[[Int]]) -> [Int] {
    
    //결과값 확인
    var result = [0, 0]
    
    //제귀함수 돌릴 함수
    func compress(_ x: Int, _ y: Int, _ size: Int) {
        let firstElement = arr[x][y]
        var isCompressible = true
        
        for i in x..<x+size {
            for j in y..<y+size {
                if arr[i][j] != firstElement {
                    isCompressible = false
                    break
                }
            }
            if !isCompressible {
                break
            }
        }
        
        if isCompressible {
            result[firstElement] += 1
        } else {
            let newSize = size / 2
            compress(x, y, newSize)
            compress(x, y + newSize, newSize)
            compress(x + newSize, y, newSize)
            compress(x + newSize, y + newSize, newSize)
        }
    }
    
    compress(0, 0, arr.count)
    
    return result
}

let inputArray: [[Int]] = [[1,1,0,0],[1,0,0,0],[1,0,0,1],[1,1,1,1]]

let result = solution(inputArray)
print(result) // Output: [10, 15]
