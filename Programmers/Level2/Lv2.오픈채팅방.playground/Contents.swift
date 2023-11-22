
var a = [3,4]
var b = [6,7]









import Foundation

func solution(_ record:[String]) -> [String] {
    var recordArray = [[String]]()
    var dicArray: [String: String] = [:]
    var result = [String]()
    var status = [String]()
    
    for i in record {
        var array = (i.split(separator: " "))
        recordArray.append([String(array[0]),String(array[1])])
        status.append(String(array[0]))
        if array.count == 3 {
            dicArray[String(array[1])] = String(array[2])
        }
    }
    for i in 0..<recordArray.count{
        var id = recordArray[i][1]
        if status[i] == "Enter" || status[i] == "Leave" {
            result.append("\(dicArray[id]!)님이 \(status[i] == "Enter" ? "들어왔습니다." : "나갔습니다.")")
        }
    }
    return result
}



func solution(_ files:[String]) -> [String] {
    var HEAD = [String]()
    var NUMBER = [Int]()
    var tail = [String]()
    var number = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    for i in files {
        var mapping = i.map{ String($0) }
        var start = ""
        var num = ""
        var count = 0
        for i in mapping {
            if !number.contains(String(i)) {
                start += i
            } else if number.contains(String(i)) {
                num += i
                count = Array(start).count
            }
        }
        HEAD.append(start.map{ String($0) }[0...count-1].joined())
        NUMBER.append(Int(num)!)
    }
    print(HEAD, NUMBER)
    return []
}
