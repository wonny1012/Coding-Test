//sort와 sorted를 공부 합시다.
//sort는 값 자체를 변경 하기 위해서.
//sorted는 어딘가 다시 변수를 지정 하고 싶을 때


import Foundation

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
    
    // var mark = resultarray.sorted(by: { $0[0] > $1[0] })
    resultarray.sort(by: { $0[0] > $1[0] })
    var solution: [Int] = []
    for q in 0..<resultarray.count {
        solution.append(Int(resultarray[q][1]))
    }
    
    return solution
}

solution(5, [2, 1, 2, 6, 2, 4, 3, 3])
