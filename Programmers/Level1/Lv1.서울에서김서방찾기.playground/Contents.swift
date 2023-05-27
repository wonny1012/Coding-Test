
func solution(_ seoul:[String]) -> String {
    return "김서방은 \(seoul.firstIndex(of: "Kim")!)에 있다"
}

func solution(_ seoul:[String]) -> String {
    var num = 0
    for i in 0..<seoul.count {
        if seoul[i] == "Kim" {
            num = i

            break
        }
    }
    return "김서방은 \(num)에 있다."
}

solution(["Jane", "Kim"])

