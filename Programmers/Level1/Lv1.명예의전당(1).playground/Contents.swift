import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var sum: [Int] = []
    var result: [Int] = []
    
    if k > score.count {
        for w in 0..<score.count {
            sum.append(score[w])
            result.append(sum.min()!)
        }
    } else {
        
        for i in 0..<k {
            sum.append(score[i])
            result.append(sum.sorted()[0])
        }
        for a in k..<score.count {
            if score[a] > sum.min()! {
                var q = sum.firstIndex(of: sum.min()!)!
                sum[q] = score[a]
                result.append(sum.min()!)
            } else {
                result.append(sum.min()!)
            }
        }
    }
    return result
}

solution(4,[0, 300, 40, 300, 20, 70, 150, 50, 500, 1000])
