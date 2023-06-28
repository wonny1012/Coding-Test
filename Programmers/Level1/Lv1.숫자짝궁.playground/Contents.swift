import Foundation

func solution(_ X: String, _ Y: String) -> String {
    var commonArray = ""
    var xCount: [Character: Int] = [:]
    var yCount: [Character: Int] = [:]

    for char in X {
        xCount[char, default: 0] += 1
    }

    for char in Y {
        yCount[char, default: 0] += 1
    }

    for num in "9876543210" {
        let xCount = xCount[num, default: 0]
        let yCount = yCount[num, default: 0]
        let commonCount = min(xCount, yCount)

        commonArray += String(repeating: num, count: commonCount)
    }

    if commonArray.isEmpty {
        return "-1"
    } else if commonArray.first == "0" {
        return "0"
    } else {
        return commonArray
    }
}


// import Foundation

// func solution(_ X:String, _ Y:String) -> String {
//     var commonArray = ""
//     var x:[String] = []
//     var y:[String] = []
//     var num = ["9","8","7","6","5","4","3","2","1","0"]
//     x = X.map{ String($0) }.sorted()
//     y = Y.map{ String($0) }.sorted()
    
//     for i in num {
//         var xcount = x.filter{ $0 == i }.count
//         var ycount = y.filter{ $0 == i }.count
//         for j in 0..<min(xcount,ycount) {
//             commonArray = commonArray + i
//         }
//     }

//     if commonArray.isEmpty {
//         return "-1"
//     } else {
//         if Array(commonArray)[0] == "0" {
//             return "0"
//         } else {
//             return commonArray
//         }
//     }
// }
