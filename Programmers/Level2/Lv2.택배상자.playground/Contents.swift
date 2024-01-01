import Foundation

//func solution(_ order:[Int]) -> Int {
//    var result = 0
//    var orderArray = order
//    var queue = [Int]()
//    var target = orderArray.removeFirst()
//    for i in 1...order.count {
//        if i == target {
//            //값이 queue와 상관없이 찾아 진다면 행동
//            result += 1
//            if !orderArray.isEmpty {
//                target = orderArray.removeFirst()
//                continue
//            } else {
//                break
//            }
//        } else if !queue.isEmpty {
//            if target == queue[queue.count-1] {
//                result += 1
//                queue.removeLast()
//                target = orderArray.removeFirst()
//                continue
//                
//            } else {
//                queue.append(i)
//                continue
//            }
//        } else {
//            queue.append(i)
//        }
//    }
//    print(queue)
//    return result
//    
//    
//}



//[5,3,4,2,1]
//for문 해서 값만큼 돌아가기
//target을 for문으로 돌리기
//target값이 number와 같은지 비교
import Foundation

func solution(_ order:[Int]) -> Int {
    var queue = [Int]()
    var num = 0
    var result = 0
    
    if order.count == 1 {
        return 1
    }
    
    for target in order {
        if target == num {
            result += 1
            continue
        } else if target > num {
            while target != num {
                queue.append(num)
                num += 1
                if target == num {
                    result += 1
                    break
                }
            }
        } else if target < num {
            if queue[queue.count-1] == target {
                result += 1
                queue.removeLast()
                continue
            } else {
                break
            }
        }
    }
    return result
}

solution([4, 3, 1, 2, 5])
