import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var dayArray:[Int] = []
    var result:[Int] = []
    var check = "T"
    for i in 0..<progresses.count {
        var day = 100-progresses[i]
        var speed = speeds[i]
        if day%speed == 0 {
            dayArray.append(day/speed)
        } else {
            dayArray.append((day/speed) + 1)
        }
    }
    var queue:[Int] = []
    var first = dayArray[0]
    while dayArray.count != 0 {
        if first >= dayArray[0] {
            queue.append(dayArray[0])
            dayArray.removeFirst()
        } else {
            result.append(queue.count)
            queue = []
            first = dayArray[0]
        }
    }
    result.append(queue.count)
    
    return result
}

solution([93, 30, 55],[1, 30, 5])
