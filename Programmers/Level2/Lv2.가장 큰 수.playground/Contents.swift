import Foundation


func solution(_ numbers:[Int]) -> String {
    

    let sortedArray = numbers.sorted { (num1, num2) in
        let combined1 = "\(num1)\(num2)"
        let combined2 = "\(num2)\(num1)"
        
        return combined1 > combined2
    }

    var result = sortedArray.reduce("", { $0 + "\($1)" })
    
    if result.map{ String($0) }[0] == "0" {
        return "0"
    }
    
    return result
}



solution([0,0,0])
