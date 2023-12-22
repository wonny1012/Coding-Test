import Foundation

func solution(_ topping: [Int]) -> Int {
    
    var firstCounter = [Int: Int]()
    topping.forEach { firstCounter[$0, default: 0] += 1 }
    var firstCount = firstCounter.count
    
    
    var secondCounter = [Int:Int]()
    var secondCount = 0

    var result = 0
    
    for i in topping {
        
        firstCounter[i]! -= 1
        
        if firstCounter[i]! == 0 {
            firstCount -= 1
        }
        
        if secondCounter[i] == nil {
            secondCounter[i] = 1
            secondCount += 1
        }
        
        if firstCount == secondCount {
            result += 1
        } else if firstCount < secondCount {
            break
        }
    }
    return result
}



//func solution(_ topping: [Int]) -> Int {
//    var result = 0
//    var firstCount = Set(topping).count
//    var toppingCount = [Int: Int]()
//    var uniqueToppings = 0
//
//    // 처음부터 끝까지 순회
//    for i in 0..<topping.count {
//        let number = topping[i]
//
//        // 새로운 토핑이 추가될 때마다 개수 업데이트
//        toppingCount[number, default: 0] += 1
//
//        // 처음으로 추가된 경우(unique한 경우)
//        if toppingCount[number] == 1 {
//            uniqueToppings += 1
//        }
//
//        // 윈도우의 크기를 유지하기 위해 가장 오래된 토핑 제거
//        if i >= firstCount {
//            let oldestTopping = topping[i - firstCount]
//            toppingCount[oldestTopping]! -= 1
//
//            // 제거된 토핑이 유일한 경우(unique한 경우)
//            if toppingCount[oldestTopping] == 0 {
//                uniqueToppings -= 1
//            }
//        }
//
//        // 유일한 토핑 수가 기대한 토핑 수와 같으면 공평하게 나누어진 경우
//        if uniqueToppings == firstCount {
//            result += 1
//        }
//    }
//
//    return result
//}







//
//import Foundation
//func solution(_ topping: [Int]) -> Int {
//    
//    var result = 0
//    var top = topping
//    var firstCount = Set(topping).count
//    var endArray = Set<Int>()
//    var endCount = 0
//    
//    for i in 0..<topping.count {
//        var num = top[i]
//        if !endArray.contains(num) {
//            endArray.insert(num)
//            endCount += 1
//        }
//        if !top[i+1..<top.count].contains(num) {
//            firstCount -= 1
//        }
//        if endCount == firstCount {
//            result += 1
//        } else if endCount > firstCount {
//            break
//        }
//
//    }
//    
//    return result
//}
