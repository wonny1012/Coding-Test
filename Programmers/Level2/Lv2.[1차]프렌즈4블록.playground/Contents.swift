func solution(_ m:Int, _ n:Int, _ board:[String]) -> Int {
    // board를 배열로 만들기
    var board = board.map { $0.map{String($0)}}
    // 이모티콘이 있는 곳과 없는곳 확인하는 Array만들기
    // var map = Array(repeating: Array(repeating: "1", count: n), count: m)
    //while 지워질 인덱스 값이 없는 경우 까지 계속 반복
    var check = "T"
    var time = 0
    
    //지워질 인덱스 설정 -> 돌때마다 바뀌니까 값을 여기에다 저장
    while check == "T" {
    check = "F"
    time += 1
    var Sumindex = [[Int]]()
    for m in 0..<m-1 {
        for n in 0..<n-1 {
            //이모티콘이 있는 곳에 캐릭터를 처음값으로 지정
            if board[m][n] != "" {
                //4개로 묶일 수 있는지 확인하고 값이 있다면 인덱스값 저장
                var char = board[m][n]
                //4개다 묶이는지 확인
                if board[m+1][n] == char && board[m][n+1] == char && board[m+1][n+1] == char {
                    check = "T"
                    //4개로 묶이는 경우 인덱스를 저장
                    var dm = [0,1,0,1]
                    var dn = [0,0,1,1]
                    for count in 0...3 {
                        Sumindex.append([m+dm[count],n+dn[count]])
                    }
                }
            }
        }
    }
    
    //지워질 값을 제거 하기
    for i in Sumindex {
        var a = i[0]
        var b = i[1]
        board[a][b] = ""
    }
    
    //지워진 빈값 채워 넣기
    for m in (0..<m).reversed(){
        for n in 0..<n {
            if board[m][n] == "" {
                for i in 0...m {
                    //빈 값이 아닐때 까지 값을 찾는다.
                    if board[m-i][n] != ""{
                        var chart = board[m-i][n]
                        board[m-i][n] = ""
                        board[m][n] = chart
                                 break
                    }
                    
                }
                
            }
        }
    }
    }
    
    print(board)
    //빈 값 계산
    var count = 0
    if time == 1 {
    } else {
        for i in board {
        count += i.filter{ $0 == ""}.count
    }
    }
    return count
}


// import Foundation

// func solution(_ m:Int, _ n:Int, _ board:[String]) -> Int {
//     var board = board.map{ $0.map{String($0)} }
//     print(board)
//     var matrix = [[Int]]()
//     var change = "F"
//     repeat {
//         change = "F"
//         matrix = Array(repeating: Array(repeating: 0, count: n), count: m)
        
//         for height in 1..<m {
//             for width in 1..<n {
//                 let char = board[height][width]
//                 guard char != " " else { continue }
//                 if board[height-1][width-1] == char && board[height-1][width] == char && board[height][width-1] == char {
//                     matrix[height][width] = 1
//                     matrix[height-1][width] = 1
//                     matrix[height][width-1] = 1
//                     matrix[height-1][width-1] = 1
//                     change = "T"
//                 }
//             }
//         }
        
//         for height in 0..<m {
//             for width in 0..<n {
//                 if matrix[height][width] == 1 { board[height][width] = " " }
//             }
//         }
        
//         for height in (1..<m).reversed() {
//             for width in 0..<n {
//                 var compareHeight = height - 1
//                 while board[height][width] == " " {
//                     guard compareHeight >= 0 else { break }
//                     if board[compareHeight][width] == " " {
//                         compareHeight -= 1
//                         continue
//                     } else {
//                         board[height][width] = board[compareHeight][width]
//                         board[compareHeight][width] = " "
//                         break
//                     }
//                 }
//             }
//         }
//     } while change == "T"
//     // } while matrix.reduce(0){ $0 + $1.reduce(0,+) } != 0
    
   
    
//     return board.map{ $0.filter{$0 == " "}.count }.reduce(0, +)
// }





//import Foundation
//
//func solution(_ m:Int, _ n:Int, _ board:[String]) -> Int {
//    var board = board.map{ $0.map{String($0)} }
//    print(board)
//    var matrix = [[Int]]()
//    var change = "F"
//    repeat {
//        change = "F"
//        matrix = Array(repeating: Array(repeating: 0, count: n), count: m)
//        
//        for height in 1..<m {
//            for width in 1..<n {
//                let char = board[height][width]
//                guard char != " " else { continue }
//                if board[height-1][width-1] == char && board[height-1][width] == char && board[height][width-1] == char {
//                    matrix[height][width] = 1
//                    matrix[height-1][width] = 1
//                    matrix[height][width-1] = 1
//                    matrix[height-1][width-1] = 1
//                    change = "T"
//                }
//            }
//        }
//        
//        for height in 0..<m {
//            for width in 0..<n {
//                if matrix[height][width] == 1 { board[height][width] = " " }
//            }
//        }
//        
//        for height in (1..<m).reversed() {
//            for width in 0..<n {
//                var compareHeight = height - 1
//                while board[height][width] == " " {
//                    guard compareHeight >= 0 else { break }
//                    if board[compareHeight][width] == " " {
//                        compareHeight -= 1
//                        continue
//                    } else {
//                        board[height][width] = board[compareHeight][width]
//                        board[compareHeight][width] = " "
//                        break
//                    }
//                }
//            }
//        }
//    } while change == "T"
//    
//   
//    
//    return board.map{ $0.filter{$0 == " "}.count }.reduce(0, +)
//}
