import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var result = 0
    var budget2 = budget
    var sortd = d.sorted()
    for i in sortd {
        if i <= budget2 {
            result += 1
            budget2 -= i
        }
    }
    return result
}

solution([1,3,2,5,4],9)
