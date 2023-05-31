import Foundation

func solution(_ food:[Int]) -> String {
    var result:[String] = []
    var num = 0
    for i in 1..<food.count {
        var during = Int(food[i]/2)
        while num != during {
            result.append(String(i))
            num += 1
        }
        num = 0
    }
    return result.joined(separator: "") + "0" + result.reversed().joined(separator: "")
}


solution([1, 3, 4, 6])
