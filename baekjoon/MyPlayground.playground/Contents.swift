import UIKit

import Foundation

var number1 = readLine()!.map{Int(String($0))!}
var number2 = readLine()!.map{Int(String($0))!}

solution(number1,number2)

func solution(_ number1:[Int], _ number2:[Int]) -> Int {
    var first: [Int] = []
    var second: [Int] = []
    var resecond: [Int] = []
    var firstresult = 0
    var secondresult = 0
    var reverssecond: [Int] = []
    if number1.count > number2.count {
        first = number1
        second = number2
        resecond = number2
        reverssecond = number2.reversed()
    } else {
        first = number2
        second = number1
        resecond = number2
        reverssecond = number2.reversed()
    }

    

    for i in 0..<first.count {
        if resecond.isEmpty {
            break
        } else if first[i] == 2 && resecond[0] == 2 {
            resecond = second
            print("ss")
        
        } else {
            resecond.remove(at: 0)
        }
    }
    
    for i in 0..<first.count {
        if resecond.isEmpty {
            break
        } else if first[i] == 2 && reverssecond[0] == 2 {
            reverssecond = second
            print("ss")
        
        } else {
            reverssecond.remove(at: 0)
       }
    }
    firstresult = resecond.count + first.count
    secondresult = reverssecond.count + first.count
    
    print(min(firstresult,secondresult))
    return min(firstresult,secondresult)
}


solution([2,1,1,2,1,1,2,1,1,2], [2,2,1,2,1,1,2])

