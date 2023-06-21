import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    //(m*count)(count*n)
    var m = arr1.count
    var n = arr2[0].count
    var count = arr1[0].count
    var result = Array(repeating: Array(repeating: 0, count: n),count: m)
    print(result)
    for x in 0..<m {
        for y in 0..<n {
            var num = 0
            for i in 0..<count {
                num += arr1[x][i]*arr2[i][y]
            }
            result[x][y] = num
        }
        
    }
 
    return result
}

solution([[1, 4], [3, 2], [4, 1]], [[3, 3], [3, 3]])
