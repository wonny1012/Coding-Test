
//import Foundation
//
//func solution(_ n:Int) -> Int {
//    var number = [0,1]
//
//    for i in 2...n {
//        number.append(number[i-1]%1234567 + number[i-2]%1234567)
//    }
//
//    return number[n]%1234567
//}
////
//print( solution(5) )
//print( solution(10) )
//print( solution(20) )
////
//
//
func Fibonacci(_ num:Int) -> Int {
    if num <= 0 {
        return 0
    } else if num == 1 {
        return 1
    } else {
        return Fibonacci(num - 1) + Fibonacci(num - 2)
    }
}

print(Fibonacci(5))
print(Fibonacci(10))
print(Fibonacci(20))

