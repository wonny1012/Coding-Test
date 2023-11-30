import Foundation

func solution(_ arr:[Int]) -> Int {
    
    var arrArray = arr
    var list = [Int]()
    for i in (1...arrArray.max()!).reversed(){
        if arrArray.filter{ $0%i == 0}.count >= 2 {
            for index in 0..<arrArray.count {
                if arrArray[index]%i == 0 {
                    arrArray[index] = arrArray[index]/i
                }
            }
            list.append(i)
        }
    }
    
    var result = list + arrArray
    
    return result.reduce(1){ $0 * $1 }
}
