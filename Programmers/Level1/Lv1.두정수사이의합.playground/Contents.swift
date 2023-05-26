//수열 공식을 이용해도 됩니다!! 


func solution(_ a:Int, _ b:Int) -> Int64 {
    return Int64(a + b) * Int64(max(a, b) - min(a, b) + 1) / Int64(2)
}



func solution(_ a:Int, _ b:Int) -> Int64 {
    var result = 0
    if a < b {
        for j in a...b {
            result += j
        }
    } else {
        for i in b...a {
            result += i
        }
    }
    return Int64(result)
}


solution(3,4)
