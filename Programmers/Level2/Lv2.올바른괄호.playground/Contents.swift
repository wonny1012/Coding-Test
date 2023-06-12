import Foundation

func solution(_ s:String) -> Bool
{
    var arrayS = Array(s)
    var ans:Bool = false
    var aa:[String] = []
    var sum = 0
    
    for i in arrayS {
        if i == "(" {
            sum += 1
        } else if i == ")" {
            sum -=  1
        }
        if sum < 0 {
            aa.append("Bool")
        }
    }
    if sum == 0 && aa.count == 0 {
        ans = true
    }
    

    return ans
}
