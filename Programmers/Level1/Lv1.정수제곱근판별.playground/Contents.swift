//곱할때는 Int로 해줘야 한다.
//for 문에서 변수 값은 위에 값에 따라서 타입이 바뀔 수 있다.
//Int8: -128 ~ 127
//Int16: -32768 ~ 32767
//Int32: -2147483648 ~ 2147483647
//Int64: -9223372036854775808 ~ 9223372036854775807
//Int: -9223372036854775808 ~ 9223372036854775807

func solution(_ n:Int64) -> Int64 {
    var result = 0
    for i in 1...n {
        if n%i == 0 && n/i == i{
                result = Int((i+1)*(i+1))
                break
        } else {
            result =  -1
        }
    }
    return Int64(result)
}

solution(225)
