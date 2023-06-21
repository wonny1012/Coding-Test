import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    var startx = Int(left)%n + 1
    var starty = Int(left)/n + 1
    var result:[Int] = []
    for i in 0...(right - left) {
        result.append(max(startx,starty))
        if startx == n {
            starty += 1
            startx = 1
        } else {
            startx += 1
        }
    }
    
    
    return result
}

solution(4, 7, 14)



//시간초과 ㅜㅜㅜ
// func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
//     var array: [Int] = []
//     let start = Int(left)
//     let end = Int(right)
//     for i in 1...n {
//         array.append(i)
//     }
//     var rearray = array
//     if (end/n) == 0 {
//         return Array(array[start...end])
//     } else if (start/n)<2 {
//         for i in 2...Int(end/n)+1 {
//         var startIndex = 0
//         var endIndex = i
//         for j in 0..<i{
//            rearray[j] = i
//         }
//         array += rearray
//     }
//         } else {
//         for i in 2..<Int(end/n)+1 {
//         var startIndex = 0
//         var endIndex = i
//         for j in 0..<i{
//            rearray[j] = i
//         }
//         array += rearray
//     }
//     }
//     return Array(array[start...end])
// }



