import UIKit


func solution(_ s:String) -> String {
    return String(s.sorted { $0 > $1 })
}


func solution(_ s:String) -> String {
    var num = String(s).map{ $0 }.sorted(by: >)
    return String(num)
}


solution("Zbcdefg")
