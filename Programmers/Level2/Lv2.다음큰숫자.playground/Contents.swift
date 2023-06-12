import Foundation

func solution(_ n:Int) -> Int
{
    var firstbin = String(n, radix:2)
    var firstOne = firstbin.filter{ $0 == "1" }.count
    var second = n+1
    var secondbin = String(second, radix:2)
    var secondOne = secondbin.filter{ $0 == "1" }.count

    while firstOne != secondOne {
        second += 1
        secondbin = String(second, radix:2)
        secondOne = secondbin.filter{ $0 == "1" }.count
    }
    return second
}
