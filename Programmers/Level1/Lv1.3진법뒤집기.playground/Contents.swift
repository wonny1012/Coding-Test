import Foundation

func solution(_ n:Int) -> Int {
    var arrayReverse: [Int] = []
    var a = n
    var result = 0
    var times = 1
    while a != 1 && a != 2 {
        arrayReverse.append(a%3)
        a = a/3
    }
    arrayReverse.append(a)
    
    for i in arrayReverse.reversed(){
        result += times*i
        times *= 3
    }
    
    
    return result
}


solution(45)
