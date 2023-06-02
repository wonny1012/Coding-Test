func solution(_ a:Int, _ b:Int) -> String {
    var result = 0
    var day = 0
    var monthnumber = [31,29,31,30,31,30,31,31,30,31,30,31]
    var week = ["THU","FRI","SAT","SUN","MON","TUE","WED"]
    if a == 1 {
        result = b%7
    } else {
    for i in 0..<a-1 {
        day += Int(monthnumber[i])
    }
        result = (day+b)%7
    }
    return week[result]
}

solution(5,24)
