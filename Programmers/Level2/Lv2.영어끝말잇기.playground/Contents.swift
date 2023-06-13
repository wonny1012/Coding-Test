import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var array:[String] = []
    var count = 0
    var result = false
    var answer:[Int] = []
    array.append(words[0])
    while result != true && count != words.count-1 {
        count += 1
        if array.contains(words[count]) {
            result = true
            break
        } else if array.last!.last != words[count].first {
            result = true
            break
        } else {
            array.append(words[count])
        }
        print(count,words[count])
    }
    print("ss",count,array)
    
    if result == false {
        answer = [0,0]
    } else {
        if (array.count+1)%n == 0 {
            answer = [n,(array.count+1)/n]
        } else {
            answer = [(array.count+1)%n, (array.count+1)/n + 1 ]
        }
    }
    
    return answer
}

solution(2,["hello", "one", "even", "never", "now", "world", "draw"])
