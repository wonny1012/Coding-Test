import Foundation

func solution(_ number:[Int]) -> Int {
    var result = 0
    for first in 0..<number.count-2 {
        for second in first+1..<number.count-1 {
            for third in second+1..<number.count {
                if number[first] + number[second] + number[third] == 0 {
                    result += 1
                }
            }
        }
    }

    return result
}

solution([-3, -2, -1, 0, 1, 2, 3])
