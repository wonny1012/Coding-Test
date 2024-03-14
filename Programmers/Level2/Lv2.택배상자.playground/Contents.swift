import Foundation

func solution(_ order:[Int]) -> Int {
    var count = 0
    var currentOrderIndex = 0
    var beltIndex = 1
    var stack = [Int]() // 보조 컨테이너 벨트를 스택으로 사용

    while currentOrderIndex < order.count {
        if beltIndex <= order.count && beltIndex == order[currentOrderIndex] {
            // 컨테이너 벨트의 상자가 현재 실어야 하는 순서의 상자인 경우
            count += 1
            currentOrderIndex += 1
            beltIndex += 1
        } else if stack.last == order[currentOrderIndex] {
            // 보조 컨테이너 벨트(스택)의 맨 위 상자가 현재 실어야 하는 순서의 상자인 경우
            stack.removeLast()
            count += 1
            currentOrderIndex += 1
        } else if beltIndex <= order.count {
            // 현재 컨테이너 벨트의 상자가 실어야 하는 순서의 상자가 아니면 스택에 추가
            stack.append(beltIndex)
            beltIndex += 1
        } else {
            // 더 이상 처리할 수 없는 상태
            break
        }
    }
    return count
}

solution([4, 3, 1, 2, 5])
