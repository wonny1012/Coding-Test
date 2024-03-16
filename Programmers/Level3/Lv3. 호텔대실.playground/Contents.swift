import Foundation

func solution(_ book_time: [[String]]) -> Int {
    var roomUsage = [Int](repeating: 0, count: 1451) // 24 * 60 = 1440 + 1 for convenience
    //시간대를 체크 하기 위해서 0으로 쭉 나열한다.
    
    for time in book_time {
        let start = toMinutes(time[0])
        let end = toMinutes(time[1])
        
        for i in start..<end + 10 {
            roomUsage[i] += 1
        }
    }
    
    return roomUsage.max() ?? 0
}

func toMinutes(_ time: String) -> Int {
    let components = time.split(separator: ":")
    let hours = Int(components[0])! * 60
    let minutes = Int(components[1])!
    return hours + minutes
}
