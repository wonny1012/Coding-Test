import Foundation

func solution(_ storey:Int) -> Int {
    var result = 0
    var count = 0
    var num = [0, 1, 2, 3, 4, 5, 5, 4, 3, 2]
    
    var numMap = String(storey).map{ Int(String($0))! }
    numMap.reverse()
    while !numMap.isEmpty {
        var count = numMap.removeFirst()
        if count == 10 {
            if !numMap.isEmpty {
                numMap[0] += 1
            } else {
                result += 1
                break
            }
        } else if count == 5 {
            if !numMap.isEmpty {
                if numMap[0] < 5 {
                    result += num[count]
                } else {
                numMap[0] += 1
                result += 10 - count
                }
            } else {
                result += num[count]
            }
        } else if count > 5 {
            if !numMap.isEmpty {
                numMap[0] += 1
                result += 10 - count
            } else {
                result += num[count]
            }
        } else {
            result += num[count]
        }
    }

    return result
}
