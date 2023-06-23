import Foundation

func permute(_ nums: [Int], _ targetNum: Int) -> [[Int]] {
    var result = [[Int]]()
    var visited = [Bool](repeating: false, count: nums.count)
    
    func permutation(_ nowPermute: [Int]) {
        if nowPermute.count == targetNum {
            result.append(nowPermute)
            return
        }
        for i in 0..<nums.count {
            if visited[i] == true {
                continue
            }
            else {
                visited[i] = true
                permutation(nowPermute + [nums[i]])
                visited[i] = false
            }
        }
    }
    permutation([])
    print(result)
    return result
}

permute([1,3,5], 3)

var a = "sdfggg"
var ad = Array("sdfgg")
var add = "sdf".map { String($0) }
var add1 = a.map { $0 }
var daf = add.joined()
//var dat2 = add1.joinxed()

var num:[String] = ["s"]
var char:[Character] = []
var aaa = ["a","d","q"]
for i in ad {
    char.append(i)
}
print(char)

var qq = aaa.joined()





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





