import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var before = section[0]
    var after = before+m-1
    var result = 1
    if section.count > 1 {
        for i in 1..<section.count{
            if after < section[i] {
                before = section[i]
                after = before+m-1
                result += 1
            }
        }
    }
    return result
}
