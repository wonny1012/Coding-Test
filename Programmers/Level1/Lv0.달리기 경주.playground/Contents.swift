import UIKit
import Foundation


//let players = ["mumu", "soe", "poe", "kai", "mine"]
//let callings = ["kai", "kai", "mine", "mine"]


import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var playingline = players
  for i in callings {
    // var player = playingline.firstIndex(of: i)
    var frontplayer = playingline.firstIndex(of: i)!-1
    playingline[playingline.firstIndex(of: i)!] = playingline[frontplayer]
    playingline[frontplayer] = i
 
}
    return playingline
}






