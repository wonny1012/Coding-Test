import Foundation

func solution(_ arrayA:[Int], _ arrayB:[Int]) -> Int {
    var gcdA = gcdOfArray(arrayA)
    var gcdB = gcdOfArray(arrayB)
    
    var resultArrayA = gcdArray(gcdA)
    var resultArrayB = gcdArray(gcdB)
    
    var result = 0
    
    for i in resultArrayA {
        var check = true
        if result < i && i > 1 {
         for num in arrayB {
            if num%i == 0 {
                check = false
                break
            }
         }
            if check == true {
                result = i
            }
        }
    }
    
       for i in resultArrayB {
        var check = true
        if result < i && i > 1 {
         for num in arrayA {
            if num%i == 0 {
                check = false
                break
            }
         }
            if check == true {
                result = i
            }
        }
    }
    
    return result
}

func gcdOfArray(_ array: [Int]) -> Int {
    guard let firstNumber = array.first else {
        return 0 // 배열이 비어있을 경우 0을 반환합니다.
    }
    
    // 배열의 첫 번째 숫자를 초기 최대공약수로 설정합니다.
    var result = firstNumber
    
    // 배열의 모든 숫자에 대해 최대공약수를 계산합니다.
    for number in array.dropFirst() {
        // 현재의 숫자와 이전에 계산된 최대공약수의 최대공약수를 구합니다.
        result = gcd(result, number)
        
        // 최대공약수가 1이면 더 이상 진행할 필요가 없습니다.
        if result == 1 {
            return 0
        }
    }
    
    return result
}

func gcdArray(_ a: Int) -> [Int] {
    var a = a
    var time = Int(sqrt(Double(a)))
    var result = [Int]()
    if a == 0 {
        return [0]
    }
    for i in 1...time {
        if a%i == 0 {
            result.append(i)
            result.append(a/i)
        }
    }
    return result
}

func gcd(_ a: Int, _ b: Int) -> Int {
    var a = a
    var b = b
    while b != 0 {
        let temp = a % b
        a = b
        b = temp
    }
    return a
}



//1.각 값들의 최대 공배수 구하기
//최대공배수를 구한 다음 다른 배열의 값이 나눠지는지 확인

// func gcd



// import Foundation

// func solution(_ arrayA:[Int], _ arrayB:[Int]) -> Int {
//     let minA = arrayA.min()!
//     let minB = arrayB.min()!
//     var result = 0
//     var arrayfirst = [Int]()
//     var arraysecond = [Int]()
    
//     if minA == 1 || minB == 1 {
//         return 0
//     }
    
//     var first = 0
//     var second = 0
    
//     if minA >= minB {
//         first = minA
//         second = minB
//         arrayfirst = arrayA
//         arraysecond = arrayB
//     } else {
//         first = minB
//         second = minA
//         arrayfirst = arrayB
//         arraysecond = arrayA
//     }
    
    
//     for i in (2...first).reversed() {
//         var check1 = true
//         for number in arrayfirst {
//             if number%i != 0 {
//                 check1 = false
//                 break
//             }
//         }
        
//         if check1 == true && i > result {
//             for number2 in arraysecond {
//                 if number2%i == 0 {
//                     break
//                 }
//             }
//             result = i
            
//             if second < result {
//              return result
//             }
            
//             break
//         }
//     }
    
//     if second < result {
//         return result
//     } else {
//         var turn = result
//         if turn == 0 {
//             turn = 2
//         }
//         for i in (turn...second).reversed() {
//             var check1 = true
            
//         for number in arraysecond {
//             if number%i != 0 {
//                 check1 = false
//                 break
//             }
//         }
//         var check3 = true
//         if check1 == true && i > result {
//             for number2 in arrayfirst {
//                 if number2%i == 0 {
//                     check3 = false
//                     break
//                 }
//                 result = i
//             }
//         }
//         }
//         return result
//     }
// }
