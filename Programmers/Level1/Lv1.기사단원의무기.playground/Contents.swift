import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var array: [Int] = [1]
    var result = 0
    var put: [Int] = []
    for i in 2...number {
        var put: [Int] = []
        for j in 1...Int(sqrt(Double(i))) {
            if i%j == 0 {
                if j == i/j {
                    put.append(j)
                } else {
                 put.append(j)
                 put.append(i/j)
            }
        }
        array.append(put.count)
    }
    print(array)
    for i in 0..<array.count {
        if limit < array[i] {
            array[i] = power
        }
        result += array[i]
    }
    return result
}
