import UIKit
import Foundation


//let players = ["mumu", "soe", "poe", "kai", "mine"]
//let callings = ["kai", "kai", "mine", "mine"]


import Foundation
//
//func solution(_ players:[String], _ callings:[String]) -> [String] {
//    var playingline = players
//  for i in callings {
//    // var player = playingline.firstIndex(of: i)
//    var frontplayer = playingline.firstIndex(of: i)!-1
//    playingline[playingline.firstIndex(of: i)!] = playingline[frontplayer]
//    playingline[frontplayer] = i
//
//}
//    return playingline
//}
//

import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var sum : [Int] = []
    var solution : [String] = players
    for i in players {
        
        sum.append(callings.filter{ $0 == i}.count)
        print(sum)
    }
    
    for n in sum {
        if n != 0 {
            players
        }
    }
    
    return solution
}

solution(["mumu", "soe", "poe", "kai", "mine"], ["kai", "kai", "mine", "mine"])





