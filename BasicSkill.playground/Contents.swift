import Foundation

var num = Int(String(String(45, radix:2)))!

func strToAscii(_ str: String) {
    print((str.map { $0.asciiValue! }))
}

strToAscii("sdjfhskjdf")





var strings = "hi playground!"

var componentArray = strings.components(separatedBy:" ")

var splitArraua = strings.split(separator: " ")

var mapArray = strings.map { String($0) }.filter{ $0 != " " }

var numbers = "1 2 3 4 5 6"

//String형으로 변환
var nums = numbers.split(separator: " ")

var nums1 = numbers.components(separatedBy: " ")

let number = "12345"

var numberArray = number.components(separatedBy: " ")

var numberArray2 = number.components(separatedBy: " ").map { Int(String($0))! }

var numberArray3 = number.split(separator: " ").map { Int(String($0))! }

var array1 = Array(strings)

let str = "Hello World"
var strmap = str.map { String($0) }
print(strmap)

var s = "HelloWorld"
var firstIndex = s.index(s.startIndex, offsetBy: 0)
print(s[firstIndex])
var lastIndex = s.index(s.endIndex, offsetBy: 0)
// "Hello"
//print(s[lastIndex])
var v = s[firstIndex ..< lastIndex]

// "Hello"
var prefix = s.prefix(5)
// "World"
var suffix = s.suffix(5)

// 배열을 이용하여 문자열 자르고 합치기
//var index = 4
//var hello = s[s.startIndex...index].map{String($0)}
//var world = s[index+1..<s.endIndex].map{String($0)}
//var helloWorld = hello.joined() + world.joined()

//let num = 45
//let binary = String(num, radix: 2)
//print(binary)
//let reverseNum = Int(String(String(num,radix:2).reversed()),radix:2)!
