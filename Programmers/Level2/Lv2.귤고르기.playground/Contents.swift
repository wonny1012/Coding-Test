import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var counter = [Int: Int]()
    var sorted: [Int] = []
    var result = 0
    var count = 0
    tangerine.forEach { counter[$0, default: 0] += 1 }
    sorted = counter.values.sorted(by: >)
    while k > result {
        result = result + sorted[count]
        count += 1
    }
    return count
}


solution(6, [1, 3, 2, 5, 4, 5, 2, 3])
