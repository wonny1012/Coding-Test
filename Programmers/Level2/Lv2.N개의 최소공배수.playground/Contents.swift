import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a % b)
    }
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}

func solution(_ arr: [Int]) -> Int {
    guard let maxNumber = arr.max() else {
        return 0
    }
    
    let result = arr.reduce(1) { (lcm, number) in
        return lcm * number / gcd(lcm, number)
    }
    
    return result
}

//func solution(_ arr:[Int]) -> Int {
//    
//    var arrArray = arr
//    var list = [Int]()
//    for i in (1...arrArray.max()!).reversed(){
//        if arrArray.filter{ $0%i == 0}.count >= 2 {
//            for index in 0..<arrArray.count {
//                if arrArray[index]%i == 0 {
//                    arrArray[index] = arrArray[index]/i
//                }
//            }
//            list.append(i)
//        }
//    }
//    
//    var result = list + arrArray
//    
//    return result.reduce(1){ $0 * $1 }
//}
