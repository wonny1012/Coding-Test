func solution(_ p: String) -> String {
    // 주어진 문자열이 빈 문자열인 경우 그대로 반환
    if p.isEmpty {
        return ""
    }
    
    var u = ""
    var v = ""
    var index = 0
    var balance = 0
    
    // 균형잡힌 괄호 문자열로 분리
    for char in p {
        if char == "(" {
            balance += 1
        } else {
            balance -= 1
        }
        
        // 균형잡힌 괄호 문자열인 경우
        if balance == 0 {
            u = String(p.prefix(index + 1))
            v = String(p.suffix(p.count - index - 1))
            break
        }
        
        index += 1
    }
    
    // u가 올바른 괄호 문자열인지 확인
    if check(u) {
        // v에 대해 재귀적으로 solution 함수 호출
        return u + solution(v)
    } else {
        // u가 올바른 괄호 문자열이 아닌 경우
        var result = "("
        result += solution(v)
        result += ")"
        
        // u의 첫 번째와 마지막 문자 제거 및 괄호 방향 뒤집기
        u.removeFirst()
        u.removeLast()
        for char in u {
            if char == "(" {
                result += ")"
            } else {
                result += "("
            }
        }
        
        return result
    }
}

func check(_ p: String) -> Bool {
    var balance = 0
    
    for char in p {
        if char == "(" {
            balance += 1
        } else {
            balance -= 1
        }
        
        if balance < 0 {
            return false
        }
    }
    
    return balance == 0
}
