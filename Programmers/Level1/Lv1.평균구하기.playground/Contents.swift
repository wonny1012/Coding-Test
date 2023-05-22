import UIKit

//배열 길이 구하는 방법은 count
//나누기 할때는 소수값이 나올 수 있으니까 Double을 사용해야 한다. 

func solution(_ arr:[Int]) -> Double {
    return Double(arr.reduce(0){ $0 + $1 })/Double(arr.count)
}

solution([1,2,3,4])


