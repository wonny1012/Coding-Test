import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var sort:[Int] = []
    var result:[Int] = []
    
    for num in commands {
        var i = (num[0])-1
        var j = (num[1])-1
        var k = (num[2])-1
        for q in i...j {
            sort.append(array[q])
        }
        result.append(sort.sorted()[k])
        sort = []
    }
    return result
}

solution([1, 5, 2, 6, 3, 7, 4],[[2, 5, 3], [4, 4, 1], [1, 7, 3]])
