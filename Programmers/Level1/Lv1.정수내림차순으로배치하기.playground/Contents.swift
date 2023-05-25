
var a = 341234556

//var mapping = String(n).map { Int(String($0))!}
var mapping = String(a)

var map = String(a).map { String($0)}
var aa = map.sorted(by: >)

let result = Int64(aa.joined(separator: ""))!
//print(Int(result)!)
