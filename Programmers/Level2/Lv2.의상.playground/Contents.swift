import Foundation

func solution(_ clothes:[[String]]) -> Int {
    if clothes.count == 0 {
        return 0
    } else {
    var nameSet: Set<String> = []
    var clothesArray = clothes.joined()
    var count:[Int] = []
        
    for i in 0..<clothes.count {
        nameSet.insert(clothes[i][1])
    }
    for j in nameSet{
        count.append(clothesArray.filter { $0 == j }.count)
    }
    count = count.map {$0 + 1}
    var result = count.reduce(1) { $0*$1 }
    return result-1
    }
}
