import Foundation

func solution(_ k: Int, _ dungeons: [[Int]]) -> Int {
    var dungeons = dungeons.sorted { $0[0] > $1[0] }
    var list = [Int]()
    for i in 0..<dungeons.count{
        list.append(i)
    }
    var result = [Int]()
    var combination = combinations( list, list.count )
    combination.removeFirst()
    var sumArray = [[Int]]()
    for i in combination {
        sumArray.append(contentsOf: permute(i, i.count))
        // print(permute(i, i.count))
    }

    //값을 비교
    for i in sumArray {
        var start = k
        var count = 0
        for j in i {
            var max = dungeons[j][0]
            var minus = dungeons[j][1]
            if start >= max {
                start -= minus
                count += 1
            }
        }
        result.append(count)
        if count == dungeons.count {
            break
        }
    }
    return result.max()!
    
}

//조합
func combinations<T>(_ elements: [T], _ k: Int) -> [[T]] {
    if k == 0 {
        return [[]]
    }

    guard let first = elements.first else {
        return []
    }

    let withoutFirst = combinations(Array(elements.dropFirst()), k - 1)
    let withFirst = withoutFirst.map { [first] + $0 }

    return withoutFirst + withFirst
}

//순열
func permute(_ nums: [Int], _ targetNum: Int) -> [[Int]] {
    var result = [[Int]]()
    var visited = [Bool](repeating: false, count: nums.count)
    
    func permutation(_ nowPermute: [Int]) {
        if nowPermute.count == targetNum {
            result.append(nowPermute)
            return
        }
        for i in 0..<nums.count {
            if visited[i] == true {
                continue
            }
            else {
                visited[i] = true
                permutation(nowPermute + [nums[i]])
                visited[i] = false
            }
        }
    }
    permutation([])
    
    return result
}
