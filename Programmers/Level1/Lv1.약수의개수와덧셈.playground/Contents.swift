import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var num: [Int] = [left,right]
    for i in num.min()!...num.max()! {
        print(i)
    }

    return 0
}

solution(13,17)
