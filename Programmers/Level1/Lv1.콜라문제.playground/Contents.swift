import Foundation


func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var result:[Int] = []
    var i = n
    while i >= a  {
        var plus = (i/a)*b
        result.append(plus)
        i = plus + i%a
    }
    return result.reduce(0){ $0 + $1 }
}

solution(3, 2, 10)
