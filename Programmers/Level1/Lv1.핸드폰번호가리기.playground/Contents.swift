//suffix란? 


func solution(_ phone_number:String) -> String {
    return String("\(String(repeating: "*", count: phone_number.count - 4))\(phone_number.suffix(4))")
}



func solution(_ phone_number:String) -> String {
    var phonemapping = phone_number.map{ $0 }
    for i in 0..<phonemapping.count-4 {
        phonemapping[i] = "*"
    }
    return String(phonemapping)
}

solution("4576365")


https://zeddios.tistory.com/1321
