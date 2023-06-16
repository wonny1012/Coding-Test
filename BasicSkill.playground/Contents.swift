import Foundation

var strings = "hi playground!"

var componentArray = strings.components(separatedBy:" ")

var splitArraua = strings.split(separator: " ")

var mapArray = strings.map { String($0) }.filter{ $0 != " " }

let number = "12345"

var numberArray = number.components(separatedBy: " ")

var numberArray2 = number.components(separatedBy: " ").map { Int(String($0))! }

var numberArray3 = number.split(separator: " ").map { Int(String($0))! }

var array1 = Array(strings)

//var array2 = Array(number).map{ Int(String($0))! }

//print(numberArray)
//
//print(numberArray2)
//
//print(numberArray3)
//
//print(array1,array2)


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

let num = 45
let binary = String(num, radix: 2)
print(binary)
let reverseNum = Int(String(String(num,radix:2).reversed()),radix:2)!

func strToAscii(_ str: String) -> Int {
    str.map { $0.asciiValue! }.map { Int($0) }.reduce(0,+)
}

strToAscii("asdfwef")
