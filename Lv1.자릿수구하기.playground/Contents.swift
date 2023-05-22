import Foundation

//String(n) = Int인 값을 문자열로 변환하는 작업을 수행한다.
//String($0) = $0은 문자열의 각 문자를 나타내야 하기 때문에 String을 써야한다.
//String(n)을 이용해서 Int를 쉽게 String으로 변경 할 수 있다.
//Int(String($0))! 여기서 Int가 옵셔널인 이유는 숫자로 변형 할 수 없는 타입이 있을 경우가 있기 때문이다.
//그러므로 반드시 값을 변형 할 때 옵셔널이 될 수 있는 값인지도 한번 확인해보자!! 


func solution(_ n:Int) -> Int
{
    var mapping = String(n).map { Int(String($0))!}
    return mapping.reduce(0){ $0 + $1 }
}

solution(12345)
