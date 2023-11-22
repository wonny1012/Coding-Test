//
//  main.swift
//  Lv1.킥다운
//
//  Created by kwon ji won on 2023/06/08.
//

import Foundation





//
//var number1 = readLine()!.map{Int(String($0))!}
//var number2 = readLine()!.map{Int(String($0))!}
//
//var first: [Int] = []
//var second: [Int] = []
//var resecond: [Int] = []
//var firstresult = 0
//var secondresult = 0
//var thirdresult = 0
//var reversfirst: [Int] = []
//var reverssecond: [Int] = []
//var rethird: [Int] = []
//
//if number1.count > number2.count {
//    first = number1
//    second = number2
//    resecond = number2
//    reverssecond = number2.reversed()
//    reversfirst = number1.reversed()
//    rethird = number2
//} else {
//    first = number2
//    second = number1
//    resecond = number2
//    rethird = number1
//    reverssecond = number2.reversed()
//    reversfirst = number2.reversed()
//}
//
//if first.count == 1 {
//    if first[0] == 2 && second[0] == 2 {
//        firstresult = 2
//        secondresult = 2
//    } else {
//        firstresult = 1
//    secondresult = 1
//    }
//} else {
//    //여기 로직만 봐주시면 될거 같습니다. 다음 건 배열을 뒤집어서 계산한거입니다.
//    for i in 0..<first.count {
//        if resecond.isEmpty {
//            break
//        } else if first[i] == 2 && resecond[0] == 2 {
//
//            resecond = second
//        } else {
//            resecond.remove(at: 0)
//        }
//    }
//    firstresult = resecond.count + first.count
//
//    //긴 배열 그대로, 짧은 배열 뒤집어서
//    for i in 0..<first.count {
//        if resecond.isEmpty {
//            break
//        } else if first[i] == 2 && reverssecond[0] == 2 {
//            reverssecond = second
//
//        } else {
//            reverssecond.remove(at: 0)
//        }
//    }
//    secondresult = reverssecond.count + first.count
//
//    //긴 배열 뒤집고 짧은 배열 그대로
//    for i in 0..<reversfirst.count {
//        if rethird.isEmpty {
//            break
//        } else if reversfirst[i] == 2 && rethird[0] == 2 {
//            rethird = second
//        } else {
//            rethird.remove(at: 0)
//        }
//    }
//    thirdresult = rethird.count + first.count
//}
//
//print(min(firstresult,secondresult,thirdresult))





