import Foundation


func solution(_ s: String) -> Int {
    var queue: [String] = []
    var wordlist:[String] = []
    var word = ""
    var list = s.map { String($0) }
    var count = list.count
    var first = list[0]
    var num = 0
    
    queue.append(first)
    while num != list.count-1 {
        word = word+first
        while !queue.isEmpty && num != list.count-1 {
            num += 1
            if list[num] == first {
                queue.append(first)
                word = word+list[num]
            } else {
                queue.removeLast()
                word = word+list[num]
            }
            count -= 1
        }
        wordlist.append(word)
        if count == 1 {
           break
        } else {
            num += 1
            first = list[num]
            word = ""
            queue.append(first)
            count = count-1
        }
    }
    if !queue.isEmpty {
        if wordlist.last != word {
            wordlist.append(word)
        }
    }
    return wordlist.count
}

solution("aa")



