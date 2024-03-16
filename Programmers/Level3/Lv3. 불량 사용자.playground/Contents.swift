import Foundation

func solution(_ user_id: [String], _ banned_id: [String]) -> Int {
    var bannedUsers = Set<[String]>()
    var selectedIds = [String]()
    var sumList = [[String]]()
    var count = 0
    
    for i in banned_id {
        var list = [String]()
       
        for j in user_id {
             var check = true
            if j.count != i.count {
            check = false
        } else {
                for (u,b) in zip(j,i) {
                    if b != "*" && u != b {
                        check = false
                        break
                    }
                }
                if check {
                    list.append(j)
                }
            }
            
        }
        sumList.append(list)
    }
    
    var visited = Array(repeating: false, count: sumList.count)
    findCombination(&sumList, &visited, &selectedIds, &bannedUsers, 0)
    
    count = bannedUsers.count
    return count
}

func findCombination(_ sumList: inout [[String]], _ visited: inout [Bool], _ selectedIds: inout [String], _ bannedUsers: inout Set<[String]>, _ index: Int) {
    if index == sumList.count {
        if selectedIds.count == sumList.count {
            bannedUsers.insert(selectedIds.sorted())
        }
        return //여기서 리턴을 안하면 index값이 오버된다.
    }
    
    for i in 0..<sumList[index].count {
        if !visited[index] && !selectedIds.contains(sumList[index][i]) {
            visited[index] = true
            selectedIds.append(sumList[index][i])
            findCombination(&sumList, &visited, &selectedIds, &bannedUsers, index + 1)
            visited[index] = false
            selectedIds.removeLast()
        }
    }
}
