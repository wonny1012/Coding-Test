import Foundation

var numArr: [[Int]] = []

func combination(_ s: Int, _ cnt: Int, _ arr: [Int]){
    if s == cnt {
        numArr.append(arr)
        return
    } else {
        var arr = arr
        for i in s..<cnt{
            arr.append(s)
            print(arr)
            combination(i + 1, cnt, arr)
            arr.removeLast()
        }
    }
}
print(numArr)

combination(0, 4, [])



