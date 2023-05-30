import Foundation

func solution(_ left: Int, _ right: Int) -> Int {
    return (left...right).map { i in (1...i).filter { i % $0 == 0 }.count % 2 == 0 ? i : -i }.reduce(0, +)
}



func solution(_ left:Int, _ right:Int) -> Int {
    var result: [Int] = []
    var sum = 0
    for i in left...right {
        for j in 1...i {
           if i%j == 0 {
                result.append(j)
            }
        }
        if result.count%2 == 0 {
            sum += i
        } else {
            sum -= i
        }
        print(i,result)
        result = []
    }
    return sum
}

solution(13,17)
