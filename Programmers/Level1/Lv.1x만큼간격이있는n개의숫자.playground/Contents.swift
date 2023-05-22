
//Array를 만들고 map을 이용해서 곱해준 배열값을 리턴한다.

func solution(_ x:Int, _ n:Int) -> [Int64] {
    return Array(1...n).map { Int64($0 * x) }
}

---------------

func solution(_ x:Int, _ n:Int) -> [Int64] {
    var result: [Int64] = []
    for i in 1...n {
        result.append(Int64(x*i))
    }
    
    
    return result
}


solution(2,5)






