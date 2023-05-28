import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var result:[Int] = []
    var solution = 0
    for i in 0..<absolutes.count {
        if signs[i] == true {
            solution += Int(absolutes[i])
        } else {
            solution += Int(absolutes[i]) * -1
        }
    }
    return solution
}

solution([4,7,12],[true,false,true])
