import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var count = n
    var reserve = reserve.sorted()
    var lost = lost.sorted()
    for i in lost {
        if reserve.contains(i) {
            reserve.remove(at : reserve.firstIndex(of: i)!)
            lost.remove(at : lost.firstIndex(of: i)!)
        }
    }
    count = n-lost.count
    
    for i in lost {
        if reserve.contains(i-1) {
            count += 1
            reserve.remove(at : reserve.firstIndex(of: i-1)!)
        } else if reserve.contains(i+1) {
            count += 1
            reserve.remove(at : reserve.firstIndex(of: i+1)!)
        }
    }
    return count
}

solution(5,[2, 4],[1, 3, 5])
