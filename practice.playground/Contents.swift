import Foundation


func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    //트럭이 지나가는 큐
    var queue = [(Int,Int)]()
    //값을 세기 위한 기준값 (무게, count)
    var weightsCount = truck_weights.map { ($0, 0) }
    var totalWeight = 0
    var count = 0
    
    while !weightsCount.isEmpty || !queue.isEmpty {
        count += 1
        
        queue = queue.map { ($0.0 , $0.1 + 1) }
    
       if queue.isEmpty {
           if !weightsCount.isEmpty {
               totalWeight += weightsCount[0].0
               queue.append(weightsCount.removeFirst())
           }
           
       } else {
           //무게에 따라 값을 추가할지 말지
           //count가 길이와 같은 값이 되면 빼주고, 다음 값이 들어온다.
           if queue[0].1 == bridge_length {
               totalWeight -= queue[0].0
               queue.removeFirst()
//               if !weightsCount.isEmpty {
//                   queue.append(weightsCount.removeFirst())
//               }
           }
           if !weightsCount.isEmpty {
               if !queue.isEmpty {
                   if queue[0].0 < bridge_length - totalWeight {
                           queue.append(weightsCount.removeFirst())
                       }
               }
               }
           
       }
    }
    return count + 1
}

solution(2, 10, [7,4,5,6])

let arr = ["one", "two", "three", "four", "one"]
var counter = [String: Int]()

arr.forEach { counter[$0, default: 0] += 1 }

print(counter)

arr.forEach {
    counter[$0, default: 0] += 1
}
print(counter)
var ste = 12345
var serString = String(ste)
print(Int(String(serString.map{ $0 }.sorted{ $0 > $1 }))!)
var asdaa = ["*", "*", "*", "*", "*", "*", "*", "4", "4", "4", "4"]
print(String(["*", "*", "*", "*", "*", "*", "*", "4", "4", "4", "4"]))

var asd = Array(1...9)
print(asd)
var ten = 1234
print(String(ten).map{ Int(String($0))!}.reduce(0) { $0 + $1 })

func solution1(_ n:Int64) -> Int64 {
    let t = Int64(sqrt(Double(n)))
    return t * t == n ? (t+1)*(t+1) : -1
}

solution1(12)

func solution2(_ phone_number:String) -> String {
    var phonemapping = phone_number.map{ String($0) }
    for i in 0..<phonemapping.count-4 {
        phonemapping[i] = "*"
    }
    return phonemapping.joined()
}

print(solution2("01033334444"))

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var resultarray: [[Double]] = [ ]
    for num in 1...N  {
        var a = 0
        var b = 0
        for i in 0..<stages.count{
             if num <= stages[i] {
            b += 1
             }
            if num == stages[i] {
                a += 1
            }
        }
    
        resultarray.append([Double(a)/Double(b),Double(num)])
    }
    print(resultarray)
    // var mark = resultarray.sorted(by: { $0[0] > $1[0] })
    resultarray.sort(by: { $0[0] > $1[0] })
    print(resultarray)
    var solution: [Int] = []
    for q in 0..<resultarray.count {
        solution.append(Int(resultarray[q][1]))
    }
    
    return solution
}

solution(5,[2, 1, 2, 6, 2, 4, 3, 3])


func solution(_ n:Int) -> Int {
    var a = String(n, radix: 3)
    var aa = a.map{ String($0) }
    aa.reverse()

    
    
    return 0
}

solution(45)


max(4, 5)
min(4, 5)

var ass = [1,2,4,5]
ass.max()
ass.min()

func solution(_ s: String) -> String {
    var answer = ""
    let words = s.components(separatedBy: " ")

    for word in words {
        var convertedWord = ""
        let characters = Array(word.lowercased())
        print(characters)

        for (index, char) in characters.enumerated() {
            if index == 0 {
                convertedWord += String(char).uppercased()
            } else {
                convertedWord += String(char)
            }
        }

        answer += convertedWord + " "
    }

    answer.removeLast()
    return answer
}


func solution(_ s:String) -> String {
    var mapping = s.map{ String($0) }
    var result:[String] = []
    if s.count%2 == 0 {
        for i in s.count/2-1 ... s.count/2 {
            result.append(String(mapping[i]))
        }
    } else {
        result.append(String(mapping[Int(s.count/2)]))
    }
    print(result)
    var a =  result.joined()
    return String(result.joined())
}

solution("abckde")


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





