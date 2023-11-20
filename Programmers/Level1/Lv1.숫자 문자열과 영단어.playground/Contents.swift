import Foundation

func solution(_ s:String) -> Int {
    var result = ""
    var dict = ["zero": "0", "one": "1", "two": "2", "three": "3", "four": "4", "five": "5", "six": "6", "seven":"7", "eight":"8", "nine":"9"]
    var num = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]
    var string = ""
    var array = s.map{ String($0) }
    for i in array {
        string += i
        // print(string)
        if dict[string] != nil {
            result += dict[string]!
            // print(string)
            string = ""
        } else if num.contains(string) {
            result += string
            string = ""
        }
    }
   
    
    return Int(result)!
}


