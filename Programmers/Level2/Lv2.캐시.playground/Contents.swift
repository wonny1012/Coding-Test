func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    
    var list = cities.map { String($0).lowercased() }
    var count = 0
    var queue = [String]()
    
    if cacheSize == 0 {
        count = cities.count * 5
    } else {
        
        for i in list {
            if queue.contains(i) {
                var iIndex = queue.firstIndex(of: i)
                queue.remove(at: iIndex!)
                count += 1
            } else if queue.count == cacheSize {
                queue.removeFirst()
                count += 5
            } else {
                count += 5
            }
            queue.append(i)
        }
    }
    return count
}
