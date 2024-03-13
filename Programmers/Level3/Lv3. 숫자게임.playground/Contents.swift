import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var aArray = a.sorted(by : <)
    var bArray = b.sorted(by : <)
    var result = 0
    var num = -1
    
    while !aArray.isEmpty && num + 1 != b.count {
        
        var aNum = aArray[0]
        aArray.removeFirst()
        
        while b.count != num + 1 {
            num += 1
            if aNum < bArray[num] {
                result += 1
             
                break
            }
        }
    }
    return result
}
