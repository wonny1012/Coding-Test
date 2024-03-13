import Foundation

func solution(_ operations:[String]) -> [Int] {
    var char = ["I", "D"]
    var result = [Int]()
    for i in operations {
        var arr = i.split(separator: " ")
    
        if arr[0] == "I" {
            result.append(Int(arr[1])!)
        } else {
            if i == "D 1" {
               if !result.isEmpty {
                   result.remove(at: result.firstIndex(of: result.max()!)!)
               }
            } else {
                 if !result.isEmpty {
                   result.remove(at: result.firstIndex(of: result.min()!)!)
               }
            }
        }
    }
    if result.isEmpty {
        return [0,0]
    }  else {
        return [result.max()!, result.min()!]
    }
}
