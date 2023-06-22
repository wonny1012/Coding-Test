import Foundation

func solution(_ priorities: [Int], _ location: Int) -> Int {
    var queue: [(Int, Int)] = []

    for (index, priority) in priorities.enumerated() {
        queue.append((index, priority))
    }
    print(queue[3].1, queue[2].0)

    var order = 0

    while !queue.isEmpty {
        let front = queue.removeFirst()
        let priority = front.1
//        print(front,priority)
        

        if queue.contains(where: { $0.1 > priority }) {
            queue.append(front)
        } else {
            order += 1

            if front.0 == location {
                break
            }
        }
    }
    return order
}

solution([1, 1, 9, 1, 1, 1], 5)

// import Foundation

// func solution(_ priorities:[Int], _ location:Int) -> Int {
//     var outIndex:[Int] = []
//     var list = priorities
//     var max = 0
//     var maxIndex = 0
//     for i in 0..<list.count {
//         if list.max()! == list[i] {
//          max = list[i]
//          maxIndex = i
//             break
//         }
//     }

//     list[maxIndex] = 0
//     outIndex.append(maxIndex)

//     while outIndex.count != list.count {
//         if maxIndex == priorities.count-1 {
//             maxIndex = 0
//         } else {
//             maxIndex = maxIndex + 1
//         }
//         if list.max()! == list[maxIndex] {
//             outIndex.append(maxIndex)
//             list[maxIndex] = 0
//         } else {
//             max = list.max()!
//             maxIndex = list.firstIndex(of: max)!
//             outIndex.append(maxIndex)
//             list[maxIndex] = 0
//         }
//     }
//     return outIndex.firstIndex(of: location)! + 1
// }
