import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    let leftArray = [1, 4, 7]
    let rightArray = [3, 6, 9]
    var mapArray = [[Int]]()
    for i in 0...3 {
        for j in 0...2 {
            mapArray.append([i,j])
        }
    }

    var result = ""
    var leftVector = [3,0]
    var rightVector = [3,2]
    var nextVector = [Int]()
    
    for i in numbers {
        if i == 0 {
           nextVector = [3,1]
        } else {
         nextVector = mapArray[i-1]
        }
        
        if leftArray.contains(i) {
            result += "L"
            leftVector = nextVector
        } else if rightArray.contains(i) {
            result += "R"
            rightVector = nextVector
        } else {
            var rightLen = 0
            var leftLen = 0
           for num in 0...1 {
               leftLen += abs(nextVector[num] - leftVector[num])
               rightLen += abs(nextVector[num] - rightVector[num])
           }
            if leftLen < rightLen {
                result += "L"
                leftVector = nextVector
            } else if leftLen > rightLen {
                result += "R"
                 rightVector = nextVector
                
            } else {
                if hand == "right" {
                     result += "R"
                 rightVector = nextVector
                } else {
                    result += "L"
                    leftVector = nextVector
                }
            }
        }
        
    }
    return result
}

