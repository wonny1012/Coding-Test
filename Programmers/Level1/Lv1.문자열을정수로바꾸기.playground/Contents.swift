

func solution(_ s:String) -> Int {
//    return Int(s)!
    return Int(s).map { Int(String($0))! }!
}

solution("-1234")
