import UIKit

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    var n1:[Int] = []
    var n2:[Int] = []
    var result: [String] = []
    for a1 in 0..<arr1.count {
        var num1 = arr1[a1]
        var num2 = arr2[a1]
        print(num1,num2)
        
        while num1 != 1 && num1 != 0 {
            num1%2 == 0 ? n1.append(0) : n1.append(1)
            num1 = num1/2
        }
        if num1 == 0 {
            n1.append(0)
        } else {
            n1.append(1)
        }
        
        
        while num2 != 1 && num2 != 0 {
            num2%2 == 0 ? n2.append(0) : n2.append(1)
            num2 = num2/2
        }
        if num2 == 0 {
            n2.append(0)
        } else {
            n2.append(1)
        }
        
        n1 = n1.reversed()
        n2 = n2.reversed()
        
        
        if n1.count != n {
            print(n1.count)
            for _ in n1.count..<n {
                n1.insert(0,at: 0)
            }
        }
        if n2.count != n {
            print(n2.count)
            for _ in n2.count..<n {
                n2.insert(0,at: 0)
            }
        }
        print(n1,n2)
        for i in 0..<n {
            if n1[i] == 0, n2[i] == 0 {
                result.append(" ")
            } else {
                result.append("#")
            }
        }
        var asd = result.joined(separator: "")
        answer.append(asd)
//    answer.append(result)
        print(answer)
    n1 = []
    n2 = []
    result = []
        }
    
    return answer
}

solution(5,[9, 20, 28, 18, 11],[30, 1, 21, 17, 28])

