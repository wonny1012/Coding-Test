
import Foundation

func solution(_ x:Int, _ y:Int, _ n:Int) -> Int {
    var arr = Array(repeating: Int.max, count: y+1)
    print(arr)
    arr[x] = 0
    
    for i in x...y where arr[i] != Int.max {
        if i+n <= y {
            arr[i+n] = min(arr[i] + 1, arr[i+n])
        }
        if i*2 <= y {
            arr[i*2] = min(arr[i] + 1, arr[i*2])
        }
        if i*3 <= y {
            arr[i*3] = min(arr[i] + 1, arr[i*3])
        }
    }
    if arr[y] == Int.max {
        return -1
    } else {
        return arr[y]
    }
}


// func solution(_ x: Int, _ y: Int, _ n: Int) -> Int {
    
//     var twoResult = Int(log2(Double(x)))
    
//     var threeResult = Int(log(Double(x)) / log(3))
//     var nResult = (y-x)/n
    
//     var check = max(twoResult,threeResult,nResult)
    
//     var queue: [(current: Int, moves: Int)] = [(x, 0)]
//     var visited: Set<Int> = [x]
    
//     while !queue.isEmpty {
//         let (current, moves) = queue.removeFirst()
        
//         if current == y {
//             return moves
//         }
        
//         if current + n <= y && !visited.contains(current + n) && moves + 1 <= check{
//             queue.append((current + n, moves + 1))
//             visited.insert(current + n)
//         }
        
//         if current * 2 <= y && !visited.contains(current * 2) && moves + 1 <= check {
//             queue.append((current * 2, moves + 1))
//             visited.insert(current * 2)
//         }
        
//         if current * 3 <= y && !visited.contains(current * 3) && moves + 1 <= check {
//             queue.append((current * 3, moves + 1))
//             visited.insert(current * 3)
//         }
//     }
    
//     return -1 // 도착점에 도달하지 못한 경우
// }


solution(10, 40, 5)
