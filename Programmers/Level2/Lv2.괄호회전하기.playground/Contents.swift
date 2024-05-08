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


var numbers1 = "1 2 3 4 5 6"
var nums = numbers1.split(separator: " ").map { Int($0)! }

var number2 = "123456"
var nums2 = number2.map{ Int(String($0))! }
print(nums)
print(nums2)
//var nums = numbers1.split(seperator: " ").map{ Int(String($0))! }
var nums1 = numbers1.map { Int(String($0))! }
print(nums1)

var string = "()[{}]"
while string.contains("{}") || string.contains("[]") || string.contains("()") {
    string = string.replacingOccurrences(of: "()", with: "")
    string = string.replacingOccurrences(of: "[]", with: "")
    string = string.replacingOccurrences(of: "{}", with: "")
}
print(string)



func solution(_ s:String) -> Int {
    var answer: Int = 0
    var string = s
    var turnString = s

    for _ in 1...s.count {
       while string.contains("{}") || string.contains("[]") || string.contains("()") {
                string = string.replacingOccurrences(of: "{}", with: "")
                string = string.replacingOccurrences(of: "()", with: "")
                string = string.replacingOccurrences(of: "[]", with: "")
                print(string)
        }


//        if string.count == 0 {
//            answer += 1
//        }
//
//        string = turnString
//        string.append(string.removeFirst())
//        turnString = string
    }

    return answer
}


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


solution("()[{}]")
