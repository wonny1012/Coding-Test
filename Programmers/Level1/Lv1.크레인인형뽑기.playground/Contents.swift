import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    //일단 큐에 전부다 쌓고 나서 없앨꺼 없애기
    var queue = [String]()
    var board = board.map { $0.map{ String($0) }}
    var result = 0
    
    for i in moves {
        var num = Int(i)
        var boardCount = board.count
        for count in 1...boardCount {
            //0이 아닌 값을 저장 하고 0으로 만들기
            if board[count-1][num-1] != "0" {
                queue.append(board[count-1][num-1])
                board[count-1][num-1] = "0"
                break
            }
        }
    }

    var check = "T"
    while check == "T" && queue.count != 0 {
        var beforeNum = queue.count
        for i in 0..<queue.count - 1 {
            if queue[i] == queue[i+1] {
                queue.remove(at: i+1)
                queue.remove(at: i)
                result += 2
                break
            }
        }
        if beforeNum == queue.count {
            check = "F"
        }
    }
    return result
}


//import Foundation
//
//func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
//    var m = board[0].count
//    var n = board.count
//    var moves = moves.map{ $0 - 1 }
//    var list = Array(repeating: Array(repeating: 0, count: n), count : m)
//    var queue:[Int] = []
//    
//    for i in 0..<n {
//        for j in 0..<m {
//            list[i][j] = board[i][j]
//        }
//    }
//    
//    for i in moves {
//        for j in 0..<n {
//            if list[j][i] != 0 {
//                queue.append(list[j][i])
//                list[j][i] = 0
//                break
//            }
//        }
//    }
//    var i = 0
//    var result = 0
//        while i != queue.count-1 {
//            if queue.count == 0 || queue.count == 1 {
//                break
//            } else if queue[i] == queue[i+1] {
//            queue.remove(at: i+1)
//            queue.remove(at : i)
//            i = 0
//            result += 1
//        } else {
//            i += 1
//        }
//    }
//    return result*2
//}
//
//solution([[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]],[1,5,3,5,1,2,1,4])
