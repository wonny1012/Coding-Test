import Foundation
// stack

// 8번
func solution8( _ s: [String]) -> Bool {
    var stack = [String]()
    
    for i in s {
       if stack.isEmpty {
            stack.append(i)
        } else {
          //stack마지막 값이랑 비교해서 생각
            if i != stack[stack.count - 1] {
                stack.removeLast()
            } else {
                stack.append(i)
            }
        }
    }
    return stack.isEmpty
}


solution8(["(","(",")",")","(",")"])
solution8(["(","(","(",")",")","(",")"])

// 9번
func solution9( _ n : Int) -> Int {
    var stack = ""
    var num = n

    while num != 1 {
//        stack.append(num%2)
        stack = "\(num%2)" + stack // 이건 시간 복잡도가 O((logN)^2)
        num = num/2
    }
    stack = "1" + stack
    
    return Int(stack)!
}

solution9(10)
solution9(12345)


// 10번
func solution10( _ s: String ) -> Int {
    var stack = [String]()
    var count = 0
    var sList = s
    var first = ""
    
    for i in s {
        if countCheck(sList) == true {
            count += 1
        }
        first = String(sList.removeFirst())
        sList.append(first)
    }
    
    
    func countCheck( _ array: String) -> Bool {
        var list = array
        while list.contains("{}") || list.contains("[]") || list.contains("()") {
            list = list.replacingOccurrences(of: "()", with: "")
            list = list.replacingOccurrences(of: "[]", with: "")
            list = list.replacingOccurrences(of: "{}", with: "")
        }
        if list == "" {
            return true
        } else {
            return false
        }
    }
    
    return count
}


func solution10_1(_ s: String) -> Int {
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

solution10("[]{}()")
solution10("}]()[{")

func solution11( _ s: String) -> Int {
    var stack = [String]()
    var sArray = s.map{ String($0) }
    
    for i in sArray {
        if !stack.isEmpty && stack[stack.count-1] == i {
            stack.removeLast()
        } else {
            stack.append(i)
        }
    }
    if stack.isEmpty {
        return 1
    } else {
        return 0
    }
}

solution11("baabaa")
solution11("baabaas")
