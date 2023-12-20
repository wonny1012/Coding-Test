
import Foundation

func solution(_ lands: [[Int]]) -> Int {
    
    var dp = lands
    
    for i in 1..<dp.count {
        //위에 값에 대한 행렬이 겹치지만 않기 때문에 순차적으로 더해서 값을 확인한다. 
        dp[i][0] += max(dp[i-1][1], max(dp[i-1][2], dp[i-1][3]))
        dp[i][1] += max(dp[i-1][0], max(dp[i-1][2], dp[i-1][3]))
        dp[i][2] += max(dp[i-1][0], max(dp[i-1][1], dp[i-1][3]))
        dp[i][3] += max(dp[i-1][0], max(dp[i-1][1], dp[i-1][2]))
    }
    
    return dp.last!.max()!
}

solution([[1,2,3,5],[5,6,7,8],[4,3,2,1]])


