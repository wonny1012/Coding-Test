import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var answer:[Int] = []
    var check = false
    var sum = brown + yellow
    var num = 1
    while check == false {
        if sum%num == 0 {
            var a = sum/num
            var b = num
            if (a-2)*(b-2) == yellow {
                answer = [a,b]
                check = true
                break
            } else {
                num += 1
            }
        } else {
            num += 1
        }
    }
    return answer
}


var a =
print(a)
print(log2(a))
