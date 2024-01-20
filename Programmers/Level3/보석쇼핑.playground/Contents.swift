import Foundation

func solution(_ gems:[String]) -> [Int] {
    //가장 짧은 구간 min으로 정한다음 그것보다 긴경우 break를 걸어준다.
    var result = [[Int]]()
    var list = [String]()
    var sol = [Int]()

    for i in gems {
        if !list.contains(i) {
            list.append(i)
        }
    }
        print(list)
    
    //길이 비교
    for i in 0..<gems.count - list.count {
        var start = i + 1
        var count = 0
        var putArray = [String]()
        for j in i..<gems.count {
            count += 1
            if !putArray.contains(gems[j]) {
                putArray.append(gems[j])
            }
            if putArray.count == list.count {
                 result.append([start, start + count - 1, count])
                break
            }
        }
        
    }
    
    var selectedArray = [Int]()
  if let minValues = result.map({ $0[2] }).min() {
    // minValues는 Optional이므로 nil 체크를 해주어야 합니다.
    
    if let index = result.firstIndex(where: { $0[2] == minValues }) {
        let selectedValues = result[index][0...1]
        selectedArray = Array(selectedValues)
        
        print(selectedValues)  // 출력: [2, 3]
    }
}
    return selectedArray
}

var a = [3,4,5]
print(a.first)

