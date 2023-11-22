
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


