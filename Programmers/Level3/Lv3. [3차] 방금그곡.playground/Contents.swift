import Foundation

func solution(_ m:String, _ musicinfos:[String]) -> String {
    
    var resultWord = ""
    var resultTime = 0
    
    for i in musicinfos {
        var infoArray = i.components(separatedBy: ",")
        var start = infoArray[0].components(separatedBy: ":")
        var last = infoArray[1].components(separatedBy: ":")
        var melody = infoArray[3].map{String($0)}
        var count = Int(last[0])! * 60 + Int(last[1])! - Int(start[0])! * 60 - Int(start[1])!
        var mMap = m.map{String($0)}
        var list = ""
        var num = 0
        
        
        for _ in 0..<count {
            var index = num % melody.count
            
            if num < count - 1 && melody[(num + 1) % melody.count] == "#" {
                list += melody[index] + "#"
                num += 2
            } else {
                list += melody[index]
                num += 1
            }
        }
        
        if mMap[mMap.count - 1] != "#" && list.contains(m + "#") {
            while list.contains(m + "#") {
            list = list.replacingOccurrences(of: m + "#", with: "_")
                print(list)
            }
        }

       
       if list.contains(m) {
            if resultWord.isEmpty || resultTime < count {
                    resultTime = count
                    resultWord = infoArray[2]
                    break
                }
       }
    }

    return resultWord.isEmpty ? "(None)" : resultWord
}


var numbers = "1 2 3 5 6"
var nums = numbers.split(separator: " ")
var nums2 = numbers.components(separatedBy: " ")
print(nums)

print(nums2)
