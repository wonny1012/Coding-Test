import Foundation

//원형 배열이니까 자리수는 나머지로 계산하기
func solution(_ n : Int, _ k : Int) -> Int {
    //count 가 1이 될때까지 while문을 돌린다.
    var count = n
    var start = 0
    var nArray = [Int]()
    
    for i in 1..<n+1 {
        nArray.append(i)
    }
    
    while count > 1 {
        
        var select = start + k - 1
        
        if select >= count {
            select = select - count
        }
        
        nArray.remove(at: select)
        start = select
        count -= 1
        print(nArray)
    }
    
    
    return nArray[0]
}


solution(5,2)
