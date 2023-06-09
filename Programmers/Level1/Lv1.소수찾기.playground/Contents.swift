import Foundation

func solution(_ n:Int) -> Int {
    var resultArray: [Int] = [2,3]
    if n == 2 {
        resultArray = [2]
    } else if n == 3 {
        
    } else {
    for i in 4...n {
        if i%2 == 0 {
            
        } else {
            var num = 0
            var doublei = Double(i)
            for k in 2...Int(sqrt(doublei)) {
                if i%k == 0 {
                    num = 1
                }
            }
            if num == 0 {
                resultArray.append(i)
            }

        }
    }

    }
    return resultArray.count
}

solution(10)
