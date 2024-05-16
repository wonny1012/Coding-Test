import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var result:[Int] = []

    for i in 0..<numbers.count {
        for a in i+1..<numbers.count {
            result.contains(numbers[i] + numbers[a]) ? nil : result.append(numbers[i] + numbers[a])
        }
    }
    
    return result.sorted()
}

