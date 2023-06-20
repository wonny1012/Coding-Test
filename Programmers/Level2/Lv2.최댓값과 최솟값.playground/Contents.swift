import UIKit

func solution(_ s:String) -> String {
    var numberArray = s.components(separatedBy: " ").map { Int($0)! }
    var min = String(numberArray.min()!)
    var max = String(numberArray.max()!)
    return min + " " + max
}

solution("-1 -2 -3 -4")
