import Foundation

func solution(_ n:Int) -> Int
{
    var ans = 1
    var number = n
    
    while number != 1 {
        if number%2 != 0 {
            ans += 1
            number -= 1
        } else {
            number = number/2
        }
    }
    return ans
}
