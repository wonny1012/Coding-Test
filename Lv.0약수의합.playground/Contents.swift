import UIKit

//잊지말자 나누기는 % 이고 0을 고려해야한다.

func solution(_ n:Int) -> Int {
    var num = 0
    if n != 0{
        for i in 1...n {
            if n%i == 0 {
                num += i
            }
        }
    }
    return num
}

solution(10)
