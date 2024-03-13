import Foundation

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    //값이 포함되지 않았을 때 0으로 변환
    if !words.contains(target) {
        return 0
    }
    
    //dfs 함수를 작성
    var begin = begin
    var result = [Int]()
    var count = 0
    
    var visited = Array(repeating: false, count: words.count)
    
    dfs(&visited, &count, begin, target, &result, words)
    
    return result.isEmpty ? 0 : result.min()!
}
// 값이 내려 가는것, 그리고 멈출지 계속할지
// visited, count, current, target, result
func dfs(_ visited: inout [Bool], _ count: inout Int, _ current: String, _ target: String, _ result: inout [Int], _ words: [String]) {
    //current와 target값이 같니?
    if current == target {
        result.append(count)
        return
    }
    
    for i in 0..<words.count {
        var differenceCount = zip(current, words[i]).filter { $0 != $1 }.count
        
        if !visited[i] && differenceCount == 1 {
            visited[i] = true
            count += 1
            dfs(&visited, &count, words[i], target, &result, words)
            visited[i] = false //다시 돌리는 이유가 값이 나오지 않아서 return이 되지 않아 돌아와서 다른 길로 가야 하기 때문!
            count -= 1 //마찬가지 이유!
        }
    }
}
