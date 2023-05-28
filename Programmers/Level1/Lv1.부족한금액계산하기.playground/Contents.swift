import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var sumprice = 0
    
    for i in 1...count {
        sumprice += i*price
    }
    
    return sumprice > money ? Int64(sumprice - money) : Int64(0)
}

solution(3,20,4)
