//import Foundation
//
//func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
//    let score: [String: Int] = Dictionary(uniqueKeysWithValues: zip(name, yearning))
//    return photo.map { $0.reduce(0) { $0 + (score[$1] ?? 0) } }
//}
//
//
//func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
//    var result:[Int] = []
//    for i in 0..<photo.count {
//        var sum = 0
//        var check = photo[i]
//        for k in 0..<name.count {
//            if check.contains(name[k]) {
//                sum += yearning[k]
//            }
//        }
//        result.append(sum)
//    }
//    return result
//}
//
//soultion(["may", "kein", "kain", "radi"],[5, 10, 1, 3],[["may", "kein", "kain", "radi"],["may", "kein", "brin", "deny"], ["kon", "kain", "may", "coni"]])
//

var a = [1,3,45]
var v = a.min()!
print(v)
a.pop
