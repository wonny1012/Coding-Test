import Foundation

func solution(_ number: String, _ k: Int) -> String {
    let nums = number.map { Int(String($0))! }  // 문자열을 정수 배열로 변환
    var stack: [Int] = []  // 최종 숫자를 저장할 스택
    var removeCount = k

    for num in nums {
        // 스택이 비어있지 않고, 제거할 수 있는 숫자가 남아있으며, 현재 숫자가 스택의 마지막 숫자보다 클 때
        while !stack.isEmpty && removeCount > 0 && stack.last! < num {
            stack.removeLast()  // 스택의 마지막 숫자를 제거 (현재 숫자를 포함시키기 위해)
            removeCount -= 1
        }
        stack.append(num)  // 현재 숫자를 스택에 추가
    }

    // 제거해야 할 숫자가 남아있다면, 스택의 끝에서 해당 개수만큼 제거
    if removeCount > 0 {
        for i in 0..<removeCount {
            stack.removeLast()
        }
    }
    
    // 스택에 남은 숫자들을 문자열로 변환하여 반환
    return stack.reduce("") { $0 + String($1) }
}

solution("4177252841", 4)
