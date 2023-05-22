
import Foundation

func solution(_ n:Int) -> Int {
    var num = 0
    for i in 2...n {
        if n%i == 1 {
            num = Int(i)
            break
        }
    }
    
    return num
    
}


solution(7)
