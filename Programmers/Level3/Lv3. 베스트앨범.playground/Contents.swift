import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
   var dic: [String: Int] = [:]
   var result = [Int]()
   var plays = plays
   // 가장 많이 들은 값이 뭔지 본다.
   for i in 0..<genres.count {
       if let currentPlay = dic[genres[i]] {
           dic[genres[i]] = currentPlay + plays[i]
       } else {
           dic[genres[i]] = plays[i]
       }
   }
    
   var sortedDic = dic.sorted { $0.1 > $1.1 }
   
    for i in 0..<dic.count {
        var name = sortedDic[i].key
        var score = [Int]()
        for j in 0..<genres.count {
            if genres[j] == name {
                score.append(plays[j])
            }
        }
        
        score.sort(by : >)
        
        if score.count < 2 {
            result.append(plays.firstIndex(of: score[0])!)
        } else {
            result.append(plays.firstIndex(of: score[0])!)
            plays[plays.firstIndex(of: score[0])!] = 0
            result.append(plays.firstIndex(of: score[1])!)
        }
        
    }
    
    return result
}
