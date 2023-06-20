import Foundation

func solution(_ elements: [Int]) -> Int {
    var array = elements + elements
    var result = Set(elements)
    for i in 1..<elements.count {
        for j in 0..<elements.count {
            var count = 0
            for s in j...(j+i) {
                count += array[s]
            }
            result.insert(count)
        }
    }
    return result.count
}

solution([7,9,1,1,4])
