import Foundation

func solution(_ stones:[Int], _ k:Int) -> Int {
    var numList = [Int]()
    var maxInWindow = 0
    
    // 초기 윈도우 내에서 가장 큰 값을 찾습니다.
    for i in 0..<k {
        if stones[i] > maxInWindow {
            maxInWindow = stones[i]
        }
    }
    numList.append(maxInWindow)
    
    if stones.count == k {
        return maxInWindow
    } else {
    
    // 슬라이딩 윈도우를 이동하면서 최대 값을 갱신합니다.
    for i in 1...(stones.count - k) {
        let prevMax = numList.last!
        let nextIndex = i + k - 1 //비교할 값
        if stones[nextIndex] > prevMax {
            numList.append(stones[nextIndex])
        } else {
            if stones[i - 1] == prevMax { // k범위를 벗어난 경우
                maxInWindow = 0
                for j in i..<i + k {
                    if stones[j] > maxInWindow {
                        maxInWindow = stones[j]
                    }
                }
                numList.append(maxInWindow)
            } else {
                numList.append(prevMax)
            }
        }
    }
    
    return numList.sorted()[0]
        
    }
}

