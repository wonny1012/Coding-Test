import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var lottosnum = lottos.sorted()
    var min_sum = 0
    var zerocount = lottosnum.filter { $0 == 0 }.count
    for i in lottos {
        if win_nums.contains(i) {
            min_sum += 1
        }
    }
    
    return [zerocount == 0 && min_sum == 0 ? 6 : 7 - min_sum - zerocount, min_sum == 0 ? 6 : 7 - min_sum ]
}

solution([44, 1, 0, 0, 31, 25],[31, 10, 45, 1, 6, 19])
