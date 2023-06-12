import Foundation

func solution(_ s:String) -> [Int] {
    var arrayS = Array(s)
    var sum = 0
    var filter = 0
    while arrayS != ["1"] {
        filter += 1
        var number = arrayS.filter{ $0 == "1"}.count
        sum += arrayS.filter{ $0 == "0"}.count
        arrayS = ["1"]
        while number != 1 {
           if number%2 == 0 {
                arrayS += "0"
                number = number/2
            } else {
                arrayS += "1"
                number = number/2
            }
        }
    }
    return [filter,sum]
}
