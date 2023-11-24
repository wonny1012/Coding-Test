import Foundation

func solution(_ new_id:String) -> String {
    var char = ["~","!","@","#","$","%","^","&","*","(",")","=","+","[","{","]","}",":","?",",","<",">","/","]"]
    
    //1,2단계 처리
    var newId = new_id.lowercased().map{ String($0) }.filter{ !char.contains($0) }.joined()
    
    //3단계처리
    while newId.contains("..") {
        newId = newId.replacingOccurrences(of: "..", with: ".")
    }
    
    //4단계 "."가 끝에 있으면 처리
    var newIdMap = newId.map{ String($0) }
    if newIdMap[0] == "." {
        newIdMap.removeFirst()
    }
    
    if !newIdMap.isEmpty {
        while newIdMap[newIdMap.count - 1] == "." {
            newIdMap.removeLast()
            if newIdMap.isEmpty {
                break
            }
        }
        
    }
    
    //5단계
    
    if newIdMap.isEmpty {
        newIdMap.append("a")
    }
    if newIdMap[newIdMap.count - 1] == "." {
        newIdMap.removeLast()
        if newIdMap.isEmpty {
            newIdMap.append("a")
        }
    }
    
    if newIdMap.count > 15 {
        newIdMap = Array(newIdMap.prefix(15))
        if newIdMap[newIdMap.count - 1] == "."{
            newIdMap.removeLast()
        }
    }
    
    if newIdMap.count < 3 {
        var last = newIdMap[newIdMap.count - 1 ]
        for _ in 0..<3-newIdMap.count{
            newIdMap.append(last)
        }
    }
    
    return newIdMap.joined()
}
