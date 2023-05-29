
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
    
    if max == 1 && min == 1 {
        common = [1]
        finalnumber = [1,1]
    } else {
        
        for i in 2...min {
            if min%(min+2-i)==0 && max%(min+2-i)==0 {
                common.append(min+2-i)
                finalnumber[0] = min/(min+2-i)
                finalnumber[1] = max/(min+2-i)
            }
        }
        
    }
    return [ common.max()!,(m*n)/(common.max()!)]
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

solution(6,30)
