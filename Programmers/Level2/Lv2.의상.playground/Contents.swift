import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var list = [String]()
    var count = [Int]()
    var clothes = clothes
    while !clothes.isEmpty {
        var first = clothes.removeFirst()
        if list.contains(first[1]) {
            count[list.firstIndex(of: first[1])!] += 1
        } else {
            list.append(first[1])
            count.append(1)
        }
    }
    
    let totalCombinations = count.reduce(1) { $0 * ($1 + 1) } - 1

    return totalCombinations

}



// import Foundation

// func solution(_ clothes:[[String]]) -> Int {
//     if clothes.count == 0 {
//         return 0
//     } else {
//     var nameSet: Set<String> = []
//     var clothesArray = clothes.joined()
//     var count:[Int] = []
        
//     for i in 0..<clothes.count {
//         nameSet.insert(clothes[i][1])
//     }
//     for j in nameSet{
//         count.append(clothesArray.filter { $0 == j }.count)
//     }
//     count = count.map {$0 + 1}
//     var result = count.reduce(1) { $0*$1 }
//     return result-1
//     }
// }
