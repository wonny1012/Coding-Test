import Foundation

var number:[Int] = []
var sss = "3 5 6 0 -1 -8"
//print(Array(sss))
var a = sss.components(separatedBy: " ").map{ Int($0)! }
print("\(a.max()!) \(a.min()!)")


//var q:[String] = []
//var solution:[Int] = []
//
//for i in pp {
//    if i != " " {
//        q.append(String(i))
//    }
//}
//
//while q.count != 0 {
//    if q[0] == "-" {
//        q[1] = "-" + q[1]
//        q.removeFirst()
//    } else {
//        solution.append(Int(q[0])!)
//        q.removeFirst()
//    }
//}
//
//print(solution.max()!," ",solution.min()!)
//print(String(solution.max()!) + String(solution.min()!))
//
        
//    var number:[Int] = []
//    var result:[String] = []
//
//    for i in numberArray {
//        if i.contains("-") {
//            var array = i.map{ String($0) }
//            number.append(Int(array[1])! * -1)
//        } else {
//            number.append(Int(i)!)
//        }
//    }
//    var max = String(number.max()!)
//    var min = String(number.min()!)
//
//
//
//    return min + " " + max
//}
//
//solution("3 5 6 0 -1")

//
//func solution(_ n:Int) -> Int {
//    var resultArray: [Int] = [2,3]
//    if n == 2 {
//        resultArray = [2]
//    } else if n == 3 {
//
//    } else {
//    for i in 4...n {
//        if i%2 == 0 {
//
//        } else {
//            var num = 0
//            var doublei = Double(i)
//            for k in 2...Int(sqrt(doublei)) {
//                if i%k == 0 {
//                    num = 1
//                }
//            }
//            if num == 0 {
//                resultArray.append(i)
//            }
//
//        }
//    }
//
//    }
//    return resultArray.count
//}
//
//solution(10)
