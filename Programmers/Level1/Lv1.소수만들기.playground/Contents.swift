import Foundation

func solution(_ nums:[Int]) -> Int {
    var answer = 0
    var array:[Int] = []
    for one in 0..<nums.count-2 {
        for two in one+1..<nums.count-1 {
            for three in two+1..<nums.count {
                var aa = 1
                var sum = nums[one]+nums[two]+nums[three]
                if array.contains(sum) {
                } else {
                    for i in 2..<Int(sum/2) {
                        if sum%i == 0 {
                            aa = 0
                            break
                        }
                    }
                }
                if aa == 1 {
                    answer += 1
                }
            }
        }
    }
    return answer
}

solution([1,2,7,6,4])
