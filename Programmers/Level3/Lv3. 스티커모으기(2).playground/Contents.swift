import Foundation

func solution(_ sticker:[Int]) -> Int {
    let count = sticker.count
    
    // 스티커가 하나도 없거나 하나만 있는 경우 바로 반환
    if count == 1 {
        return sticker[0]
    } else if count == 2 {
        return sticker.max()!
    }
    
    // 동적 프로그래밍을 위한 배열 초기화
    var dp1 = Array(repeating: 0, count: count) // 첫 번째 스티커를 사용하는 경우
    var dp2 = Array(repeating: 0, count: count) // 첫 번째 스티커를 사용하지 않는 경우
    
    // 첫 번째 스티커를 사용하는 경우
    dp1[0] = sticker[0]
    dp1[1] = sticker[0] // 첫 번째 스티커를 사용하므로 두 번째 스티커는 사용할 수 없음
    for i in 2..<count-1 { // 마지막 스티커는 사용할 수 없음
        dp1[i] = max(dp1[i-1], dp1[i-2] + sticker[i])
    }
    
    // 첫 번째 스티커를 사용하지 않는 경우
    dp2[0] = 0 // 첫 번째 스티커를 사용하지 않음
    dp2[1] = sticker[1]
    for i in 2..<count {
        dp2[i] = max(dp2[i-1], dp2[i-2] + sticker[i])
    }
    
    // 두 경우 중 최대값 반환
    return max(dp1[count-2], dp2[count-1])
}
