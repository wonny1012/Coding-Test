

func solution(_ num:Int) -> Int {
    var num = num
    var max = 0
    if num == 1 {
        return 0
    } else {
        while num != 1 {
            if max == 500 {
                return -1
            }
            else {
                if num%2 == 0 {
                    num = num/2
                    max += 1
                } else {
                    num = 3*num + 1
                    max += 1
                }
            }
        }
        return max
    }
}

solution(6)
