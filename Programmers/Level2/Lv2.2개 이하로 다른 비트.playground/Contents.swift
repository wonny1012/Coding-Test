import Foundation

func solution(_ numbers:[Int64]) -> [Int64] {
    var result: [Int64] = []
    
    for num in numbers {
        if num == 0 {
            result.append(1)
            continue
        }
        var radixnum = String(num, radix: 2).map{String($0)}
        
        if radixnum.contains("0") {
            var oneIndex = [Int]()
            for i in stride(from: radixnum.count - 1, through: 0, by: -1) {
                if radixnum[i] == "1" {
                    if oneIndex.isEmpty {
                        oneIndex.append(i)
                    } else {
                        oneIndex[0] = i
                    }
                    continue
                } else if radixnum[i] == "0" {
                    radixnum[i] = "1"
                    if !oneIndex.isEmpty {
                        radixnum[oneIndex[0]] = "0"
                    }
                    break
                }
            }
        } else {
            radixnum[0] = "0"
            radixnum.insert("1", at: 0)
            }
        result.append(Int64(radixnum.joined(), radix:2)!)
        }
    return result
}

solution([1001, 337, 0, 1, 333, 673, 343, 221, 898, 997, 121, 1015, 665, 779, 891, 421, 222, 256, 512, 128, 100])

//[1002, 338, 1, 2, 334, 674, 347, 222, 899, 998, 122, 1019, 666, 781, 893, 422, 223, 257, 513, 129, 101]
