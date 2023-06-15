func solution(_ n:Int) -> Int {
    var array = [1,1]
    var result = 1
    if n == 1 {
        result = 1
    } else {
        for i in 2...n {
            array.append(array[i-1] + array[i-2])
        }
        result = array[n]
        print(array)
    }
    
    return result
}

solution(5)

