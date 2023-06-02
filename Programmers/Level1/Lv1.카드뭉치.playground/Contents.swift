import Foundation

func solution(_ cards1: [String], _ cards2: [String], _ goal: [String]) -> String {
    var first = 0
    var second = 0
    var finalfirst = 0
    var finalsecond = 0

    for i in goal {
        if cards1[first] == i {
            if first == cards1.count-1 {
                finalfirst = first + 1
            } else {
                first += 1
                finalfirst += 1
            }
        } else if cards2[second] == i {
            if second == cards2.count-1 {
                finalsecond = second + 1
            } else {
                second += 1
                finalsecond += 1
            }
        }
    }
    print(finalfirst,finalsecond)
    
    if finalfirst + finalsecond == goal.count {
        return "Yes"
    } else {
        return "No"
    }
}

var a = [[2,4],[3,4]]
