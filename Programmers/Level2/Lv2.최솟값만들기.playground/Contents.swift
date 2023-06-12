import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var reverseB = B.sorted(by : >)
    var sortedA = A.sorted()
    var ans = 0
    for i in 0..<A.count {
        ans += sortedA[i]*reverseB[i]
    }

    return ans
}
