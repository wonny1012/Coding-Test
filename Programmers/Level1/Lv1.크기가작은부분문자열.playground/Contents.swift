import Foundation


func solution(_ t:String, _ p:String) -> Int {
    var result = 0
    var sort: [Int] = []
    var arrayt = t.map{ ($0) }
    var numt = p.map{ ($0) }.count
    for i in 0...arrayt.count - numt {
        var new = Int(String(arrayt[i...i+numt-1]))!
        sort.append(new)
    }
    
    for t in sort {
        if t < Int(p)! || t == Int(p)! {
            result += 1
        }
    }
    return result
}


solution("500220839878", "7")
