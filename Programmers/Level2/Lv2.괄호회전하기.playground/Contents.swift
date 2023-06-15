import Foundation

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

//----

func solution(_ s:String) -> Int {
    var answer: Int = 0
    var string = s
    var turnString = s

    for _ in 1...s.count {
       while string.contains("{}") || string.contains("[]") || string.contains("()") {
                string = string.replacingOccurrences(of: "{}", with: "")
                string = string.replacingOccurrences(of: "()", with: "")
                string = string.replacingOccurrences(of: "[]", with: "")
        }


        if string.count == 0 {
            answer += 1
        }

        string = turnString
        string.append(string.removeFirst())
        turnString = string
    }

    return answer
}
