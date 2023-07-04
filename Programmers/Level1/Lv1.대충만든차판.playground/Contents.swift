import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    var keymapArray:[[String]] = []
    var count:[Int] = []
    var result:[Int] = []
    for i in keymap {
        keymapArray.append(i.map { String($0) })
    }
    var targetsArray:[[String]] = []
    for i in targets {
        targetsArray.append(i.map { String($0) })
    }
    for i in targetsArray {
        //타겟 하나를 뽑는 과정
        //합쳐서 result에 넣어야 하니까 sum
        var sum = 0
        //알파벳 하나씩 뽑는 과정
        for j in 0..<i.count {
            count = []
            var str = i[j]
            //keymap에서 글자수를 찾아서 최소값 넣어야 하는 과정
            for k in keymapArray {
                if k.contains(str) {
                    count.append(k.firstIndex(of: str)! + 1)
                }
            }
            if count.isEmpty {
                result.append(-1)
            } else {
                sum = sum + count.min()!
            }
            
        }
        result.append(sum)
    }
    if result.contains(-1) {
        result = [-1]
    }
    return result
}
