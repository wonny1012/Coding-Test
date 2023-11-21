import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    var radixNum = String(n, radix: k)
    var num = [Int]()
    var number = ""
    var result = 0

    
    for i in radixNum {
        if i != "0" {
            number += String(i)
        } else if number != "" {
            num.append(Int(number)!)
            number = ""
        }
    }
    if number != "" && number != "0" {
        num.append(Int(number)!)
    }
    
    //약수 확인
    for i in num {
        if i > 1 && isPrime(i) {
            result += 1
        }
    }


    return result
}

func isPrime(_ num: Int) -> Bool {
    if num < 2 {
        return false
    }
    
    if num == 2 {
        return true
    } else {
        for i in 2..<Int(sqrt(Double(num))) + 1 {
        if num % i == 0 {
            return false
        }
    }
    }
    return true
}
