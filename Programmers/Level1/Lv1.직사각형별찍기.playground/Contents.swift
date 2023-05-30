import Foundation

var a = 10

var b = 2


let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
//let (a, b) = (n[0], n[1])
var num: [Character] = []
for _ in 1...b {
    for _ in 1...a {
        num.append("*")
    }
    print(String(num))
    num = []
}

