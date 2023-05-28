
func solution(_ arr:[Int]) -> [Int] {
    var result:[Int] = []
    var min = arr.firstIndex(of: arr.min()!)
    
    if arr.count == 1 {
        result = [-1]
        
    } else {
        for i in 0..<arr.count {
            if min != i {
                result.append(arr[i])
            }
        }
    }
    return result
}

solution([2,4,7,8,1])
