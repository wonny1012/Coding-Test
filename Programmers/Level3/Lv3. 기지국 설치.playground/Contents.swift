import Foundation

func solution(_ n:Int, _ stations:[Int], _ w:Int) -> Int{
    var answer = 0
    var stations = stations
    var count = [Int]()
    
    // 기지국이 없는 경우
    if stations.isEmpty {
        // 전체 영역을 기지국의 커버 범위로 나누어 계산
        return n / (2*w+1) + (n % (2*w+1) == 0 ? 0 : 1)
    }
    
    // 첫 번째 기지국 이전 영역 처리
    let firstGap = stations[0] - w - 1
    if firstGap > 0 {
        numCount(firstGap, w, &answer)
    }
    
    // 기지국 사이의 영역 처리
    for i in 1..<stations.count {
        let gap = stations[i] - stations[i-1] - 2*w - 1
        if gap > 0 {
            numCount(gap, w, &answer)
        }
    }
    
    // 마지막 기지국 이후 영역 처리
    let lastGap = n - stations[stations.count-1] - w
    if lastGap > 0 {
        numCount(lastGap, w, &answer)
    }
    
    return answer
}

 func numCount(_ num: Int, _ w: Int, _ answer: inout Int) {
        if num % (2*w+1) != 0 {
            answer += 1 + num / (2*w+1)
        }
        else {
            answer += num / (2*w+1)
        }
    }
