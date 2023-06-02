import UIKit

func solution(_ dartResult:String) -> Int {
    let special = ["*","#"]
    var num:[Int] = []
    var array = dartResult.map { String($0) }
    var remove: [Int] = []
    
    for i in 0..<array.count-1 {
        if array[i] == "1" && array[i+1] == "0" {
            array[i] = "10"
            remove.append(i+1)
        }
    }
    
    if remove.count > 0 {
        for f in 0..<remove.count {
            array.remove(at: remove[f])
            for i in f+1..<remove.count {
                remove[i] -= 1
            }
            
        }
        
    }
    
    for i in 0..<array.count {
        if array[i] == "S" {
            num.append(Int(array[i-1])!*1)
        } else if array[i] == "D" {
            num.append(Int(array[i-1])!*Int(array[i-1])!)
        } else if array[i] == "T" {
            num.append(Int(array[i-1])!*Int(array[i-1])!*Int(array[i-1])!)
        }
        
        if special.contains(array[i]) {
            if array[i] == "*" {
                if i != 2 {
                    num[num.count-2] *= 2
                    num[num.count-1] *= 2
                } else {
                    num[0] *= 2
                }
            } else if array[i] == "#" {
                num[num.count-1] *= -1
            }
            
        }
    }
    return num.reduce(0, { $0 + $1 })
}

solution("10D4S10D10D")
