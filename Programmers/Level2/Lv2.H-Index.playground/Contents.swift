import Foundation

func solution(_ citations:[Int]) -> Int {
    var count:[Int] = []
    var array = citations.sorted(by: >)
        for i in 0...array.max()! {
            if array.filter { $0 >= i }.count >= i && array.filter { $0 < i }.count <= i {
                count.append(i)
            }
        }
    return count.max()!
}

solution([3, 0, 6, 1, 5])
