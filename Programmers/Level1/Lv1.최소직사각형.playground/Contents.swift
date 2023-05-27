
import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var a1:[Int] = []
    var a2:[Int] = []
    for i in sizes{
    if i[0] > i[1] {
        a1.append(i[0])
        a2.append(i[1])
    }else {
        a1.append(i[1])
        a2.append(i[0])
        
    }
}
    return a1.max()!*a2.max()!
}

solution([[10, 7], [12, 3], [8, 15], [14, 7], [5, 15]])
