import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var result = 0
    var score = score.sorted(by : >)
    var num = (score.count)/m
    if score.count >= m {
        for i in 1...num {
            var sort:[Int] = []
            for k in m*i-2..<m*i+1 {
                sort.append(score[k-1])
            }
            result += sort.min()!*m
        }
    }
    return result
}

solution(4,3,[4, 1, 2, 2, 4, 4, 4, 4, 1, 2, 4, 2])
