import Foundation

var a = ["ss","aaa"]
var b = a.last!.last


func solution(_ s: String) -> Int {
    var stack: [Character] = []
    
    for char in s {
        if let top = stack.last, top == char {
            stack.removeLast()
        } else {
            stack.append(char)
        }
    }
    
    return stack.isEmpty ? 1 : 0
}


solution("baaba")
