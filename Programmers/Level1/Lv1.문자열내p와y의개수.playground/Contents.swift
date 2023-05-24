

//소문자로 바꾸는 방법 : lowercased()
//갯수를 찾는 방법 -> 1. Filter 2.components + count

import Foundation

func solution(_ s:String) -> Bool
{
    return s.lowercased().filter { $0 == "p" }.count == s.lowercased().filter { $0 == "y" }.count
}


solution("pPoooyY")


func solution(_ s:String) -> Bool
{
    let string = s.lowercased()
    return string.components(separatedBy: "p").count == string.components(separatedBy: "y").count
}

solution("pPoooyY")


func solution(_ s:String) -> Bool
{
    var ans:Bool = false
    var changes = s.lowercased()
    var mapping = String(changes).map { String($0) }
    var pnum = 0
    var ynum = 0

    for i in mapping {
        if i == "y" {
            ynum += 1
        }
        if i == "p" {
            pnum += 1
        }
    }



    return ynum == pnum ? true : false
}

solution("pPoooyY")
