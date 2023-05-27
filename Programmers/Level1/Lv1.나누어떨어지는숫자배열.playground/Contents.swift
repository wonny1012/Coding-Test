
func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    let array = arr.sorted().filter{ $0 % divisor == 0 }
    return  array == [] ? [-1] : array
}

solution([5, 9, 7, 10], 5)

//func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
//    var a : [Int] = []
//    for i in arr {
//        if i%divisor == 0 {
//            a.append(i)
//        }
//    }
//    if a.count == 0 {
//        a.append(-1)
//    }
//    return a.sorted()
//}
//
