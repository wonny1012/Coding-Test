import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
{
    var small = 0
    var big = 0
    var answer = 0
    
    a > b ? (small = b, big = a) : (small = a, big = b)
    
    while small != big {
        answer += 1
        small = Int((small+1)/2)
        big = Int((big+1)/2)
    }
    
    
    return answer
}

solution*
