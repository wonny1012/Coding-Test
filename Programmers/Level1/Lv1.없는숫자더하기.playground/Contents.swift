

import Foundation

func solution(_ numbers: [Int]) -> Int {
    return (0...9).filter { !numbers.contains($0) }.reduce(0){$0 + $1}
}
//
//func solution(_ numbers:[Int]) -> Int {
//    var num = [0,1,2,3,4,5,6,7,8,9]
//    var result = 0
//    for i in num {
//        if numbers.contains(i) {
//        } else {
//            result += i
//        }
//    }
//    return result
//}


solution([1,2,3,4,6,7,8,0])
