

func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted{  Array($0)[n] == Array($1)[n] ? $0 < $1 :  Array($0)[n] < Array($1)[n] }
}


//func solution(_ strings:[String], _ n:Int) -> [String] {
//    var count = 0
//    var result = strings
//
//    while count != strings.count-1 {
//        for i in 0..<strings.count-1  {
//            if Array(result).map { Array($0) }[i][n] == Array(result).map { Array($0) }[i+1][n] {
//                if result[i] > result[i+1] {
//                    result.swapAt(i, i+1)
//                }
//            } else {
//                if Array(result).map { Array($0) }[i][n] > Array(result).map { Array($0) }[i+1][n]
//                {
//                    result.swapAt(i, i+1)
//                    }
//
//            }
//            }
//
//        count += 1
//    }
//    return result
//}


solution(["abce", "abcd", "cdx"],2)
