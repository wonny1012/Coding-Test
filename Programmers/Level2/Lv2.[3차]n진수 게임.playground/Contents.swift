import Foundation

func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
    var arr = [[Character]]()
    var result = ""
    var start = 0
    
    while arr.count < t*m + p{
        arr.append(String(start, radix: n).map { $0 })
        start += 1
    }
    var numArray = Array(arr.joined())

    for num in 0..<t {
        var char = p + m*num
        if char >= numArray.count {
            break
        } else {
           result += String(numArray[char-1]).uppercased()
        }
    }
    
    return result
}


import Foundation

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    var arrayAll = [[String]]()
    for i in records {
        // components(seperatedBy : " ")
        arrayAll.contains(i.components(separatedBy: " "))
    }
    print(arrayAll)
    return []
}
