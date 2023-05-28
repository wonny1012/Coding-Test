//[Character]일 경우에는 String()인 경우 String으로 나타낼 수 있지만
//[String]인 경우네는 할 수 없다.
//따라서 [String]인 경우에 mapping = String(s).map{ $0 }.joined를 쓰면 된다. -> 확인 한번 해봅시다!!



func solution(_ s:String) -> String {
    if Array(s).count % 2 == 0 {
        return String(Array(s)[(s.count/2)-1...(s.count/2)])
    }else{
        return String(Array(s)[s.count/2])
    }
}

solution("abcde")


var a = ["s","d","a"]
var b = "asdasdasd"

print(String(b).map{ $0 })

type(of: Array(b))
String(Array(b))

//
//print(Character(a))


//func solution(_ s:String) -> String {
//    var mapping = String(s).map{ $0 }
//    var result:[String] = []
//    if s.count%2 == 0 {
//        for i in s.count/2-1 ... s.count/2 {
//            result.append(String(mapping[i]))
//        }
//    } else {
//        result.append(String(mapping[Int(s.count/2)]))
//    }
//
//    return String(result.joined(separator: ""))
//}
