
func solution(_ n:Int64) -> [Int] {
    if n != 0 {
    var mapping = String(n).map { Int(String($0))!}
    var result = mapping
    var count = mapping.count-1
    for i in 0...count {
        result[i] = mapping[count-i]
    }
    return result
    } else {
        return [0]
    }
}

solution(14561234)
