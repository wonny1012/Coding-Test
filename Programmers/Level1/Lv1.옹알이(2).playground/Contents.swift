import Foundation

func solution(_ babbling:[String]) -> Int {
    var words = ["aya", "ye", "woo", "ma"]
    var count = 0
   
    
    for i in babbling {
        var wordarray:[String] = []
        var word = i.map { String($0) }
        var inputword = ""
        for k in word {
            inputword = inputword + k
            if words.contains(inputword) {
                if wordarray.last == inputword {
                   break
                } else {
                    wordarray.append(inputword)
                    inputword = ""
                }
            }
           
        }
            if Array(inputword).count == 0 {
                      count += 1
            }
    }

    return count
}

solution(["ayaye", "uuu", "yeye", "yemawoo", "ayaayaa"])
