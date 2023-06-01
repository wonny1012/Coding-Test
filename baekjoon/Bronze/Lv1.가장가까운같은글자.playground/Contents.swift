import Foundation

func solution(_ s:String) -> [Int] {
    var result:[Int] = [-1]
    var solution = s.map{ String($0) }
    print(solution)
    for i in 1..<solution.count {
        for k in 0...i-1 {
            if solution[i] == solution[i-1-k] {
                result.append(k+1)
                break
            }
        }
        if result.count == i {
            result.append(-1)
        }
    }
    return result
}

solution("banana")
