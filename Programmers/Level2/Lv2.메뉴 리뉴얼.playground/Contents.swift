import Foundation

func solution(_ orders: [String], _ course: [Int]) -> [String] {
    var result = [String]()

    //코스 마다 값을 빼서 result값에 넣어준다.
    for courseLength in course {
        var menuCounts = [String: Int]()
        
        //주문서 보고 값을 정하는듯?
        for order in orders {
            //주문서 배열로 저장
            let orderedMenuArray = order.map { String($0) }.sorted()
            //combinations함수 값 조합으로 따로 계산
            let combinations = orderedMenuArray.combinations(ofLength: courseLength)
            print(combinations)
            for combination in combinations {
                let menu = combination.joined()
                menuCounts[menu, default: 0] += 1
            }
        }

        let maxCount = menuCounts.values.max() ?? 0

        if maxCount >= 2 {
            let topMenus = menuCounts.filter { $0.value == maxCount }.map { $0.key }
            result.append(contentsOf: topMenus)
        }
    }

    return result.sorted()
}

// Helper function to generate combinations
// 저 조건 설정: length가 0이면 빈 배열을 포함하는 배열을 반환하여 재귀를 멈춥니다.
// 배열이 비어있는 경우: 빈 배열을 반환하여 재귀를 멈춥니다.
// 첫 번째 요소를 선택하고 나머지 배열에서 길이에 맞는 조합을 생성합니다.
// 첫 번째 요소를 제외하고 나머지 배열에서 길이보다 하나 작은 조합을 생성합니다.
// ofLength는 값을 불러오는 매개변수명 length는 함수 안에서 말하는 매개변수명
extension Array {
    func combinations(ofLength length: Int) -> [[Element]] {
        //빈배열 인경우 반환하여 재귀를 멈춘다.
        if length == 0 {
            return [[]]
        }
        
        //빈배열이 아닌 경우 처음 값을 배열의 첫요소로 정한다. ???
        guard let first = self.first else {
            return []
        }

        let rest = Array(self.dropFirst())
        let withoutFirst = rest.combinations(ofLength: length)
        let withFirst = rest.combinations(ofLength: length - 1).map { [first] + $0 }

        return withoutFirst + withFirst
    }
}
