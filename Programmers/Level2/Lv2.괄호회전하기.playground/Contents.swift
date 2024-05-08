import Foundation

//var a = ["1","2","3"]
//var b = a.removeLast()
//print(b)
//
//
//func solution(_ s: String) -> Int {
//    let n = s.count
//    var brackets = Array(s)
//    var answer = 0
//
//    for i in 0..<n {
//        if isValid(brackets) {
//            answer += 1
//        }
//        var first = brackets.first!
//        brackets.append(first)
//        brackets.remove(at: 0)
//    }
//
//    return answer
//}
//
//func isValid(_ brackets: [Character]) -> Bool {
//    var stack: [Character] = []
//
//    for bracket in brackets {
//        if bracket == "(" || bracket == "[" || bracket == "{" {
//            stack.append(bracket)
//        } else {
//            if stack.isEmpty {
//                return false
//            }
//
//            let lastBracket = stack.removeLast()
//
//            if (bracket == ")" && lastBracket != "(") ||
//                (bracket == "]" && lastBracket != "[") ||
//                (bracket == "}" && lastBracket != "{") {
//                return false
//            }
//        }
//    }
//
//    return stack.isEmpty
//}

//----



func solution(_ s: String) -> Int {
    let n = s.count
    var brackets = Array(s)
    var answer = 0
    
    for i in 0..<n {
        if isValid(brackets) {
            answer += 1
        }
        var first = brackets.first!
        brackets.append(first)
        brackets.remove(at: 0)
    }
    
    return answer
}

func isValid(_ brackets: [Character]) -> Bool {
    var stack: [Character] = []
    
    for bracket in brackets {
        if bracket == "(" || bracket == "[" || bracket == "{" {
            stack.append(bracket)
        } else {
            if stack.isEmpty {
                return false
            }
            
            let lastBracket = stack.removeLast()
            
            if (bracket == ")" && lastBracket != "(") ||
                (bracket == "]" && lastBracket != "[") ||
                (bracket == "}" && lastBracket != "{") {
                return false
            }
        }
    }
    
    return stack.isEmpty
}


func solution10(_ s: String) -> Int {
    var answer = 0
    let n = s.count
    
    for i in 0..<n {
        var stack = [Character]()
        var isValid = true
        
        for j in 0..<n {
            let index = (i + j) % n
            let c = s[s.index(s.startIndex, offsetBy: index)]
            
            if c == "(" || c == "[" || c == "{" {
                stack.append(c)
            } else {
                if stack.isEmpty {
                    isValid = false
                    break
                }
                
                let top = stack.removeLast()
                if (c == ")" && top != "(") || (c == "}" && top != "{") || (c == "]" && top != "[") {
                    isValid = false
                    break
                }
            }
        }
        
        if stack.isEmpty && isValid {
            answer += 1
        }
    }
    
    return answer
}

solution("()[{}]")
