
func solution(_ n:Int, _ m:Int) -> [Int] {
    var finalnumber: [Int] = [n,m]
    var common: [Int] = [1]
    var max = 0
    var min = 0
    if n>m {
        max = n
        min = m
    } else {
        max = m
        min = n
    }

    for i in 1...min {
        if min%(min+1-i)==0 && max%(min+1-i)==0 {
            common.append(min+1-i)
            finalnumber[0] = min/(min+1-i)
//            min = min
//            max = max/(min+1-i)
            finalnumber[1] = max/(min+1-i)
            print(finalnumber)
        }
    }



    return [ common.reduce(1) { $0 * $1 },(m*n)/(common.reduce(1) { $0 * $1 })]
}
//func gcd(_ a: Int, _ b: Int) -> Int {
//    if b == 0 {
//        return a
//    } else {
//        return gcd(b, a % b)
//    }
//}
//
//func solution(_ n: Int, _ m: Int) -> [Int] {
//    let greatestCommonDivisor = gcd(n, m)
//    let leastCommonMultiple = n * m / greatestCommonDivisor
//    return [greatestCommonDivisor, leastCommonMultiple]
//}

solution(4,10)
