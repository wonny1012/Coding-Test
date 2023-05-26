

func solution(_ x:Int) -> Bool {
    
    var mapping = String(x).map { Int(String($0))!}
    return x%mapping.reduce(0){ $0 + $1 } == 0 ? true : false

}

solution(10)
