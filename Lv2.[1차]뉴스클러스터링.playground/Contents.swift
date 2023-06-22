import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    //문자열만 불러오고 싶어서 contains으로 불러올 예정
    var alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    var str1Array = str1.map { String($0.lowercased()) }
    var str2Array = str2.map { String($0.lowercased()) }
    var count = 0
    var str1twoArray:[String] = []
    var rest1Array:[String] = []
    var rest2Array:[String] = []
    var str2twoArray:[String] = []
    
    //2개씩 담아준다.
    for i in 0..<str1Array.count-1 {
        if alphabet.contains(str1Array[i]) && alphabet.contains(str1Array[i+1]) {
        var str = str1Array[i] + str1Array[i+1]
        str1twoArray.append(str)
        }
    }

    for i in 0..<str2Array.count-1 {
        if alphabet.contains(str2Array[i]) && alphabet.contains(str2Array[i+1]) {
        var str = str2Array[i] + str2Array[i+1]
        str2twoArray.append(str)
        }
    }
    var sum = str1twoArray.count + str2twoArray.count
    // 문자열 교집합 갯수 새기 -> count
    var restr2twoArray = str2twoArray
    
    for i in 0..<str1twoArray.count {
        if restr2twoArray.contains(str1twoArray[i]){
            count += 1
            var strIndex = restr2twoArray.firstIndex(of: str1twoArray[i])!
            restr2twoArray.remove(at: strIndex)
        }
    }
    
    if str1twoArray.count == 0 && str2twoArray.count == 0 {
        return 65536
    } else if count == 0 {
        return 0
    }
        else {
    var result = Double(count)/(Double(sum)-Double(count))*65536
    return Int(result)
    }

}

solution("FRANCE", "french")
