import Foundation

func solution(_ s: String) -> [Int] {
    var array = s.components(separatedBy: [",","{","}"]).filter { $0 != "" }.map { Int($0)! }


    var counter = [Int: Int]()
    
    array.forEach { counter[$0, default: 0] += 1 }
    
    let sortedPairs = counter.sorted { $0.value > $1.value }

    let result = sortedPairs.map { $0.key }
 
    return result
}
solution("{{2},{2,1},{2,1,3},{2,1,3,4}}")


