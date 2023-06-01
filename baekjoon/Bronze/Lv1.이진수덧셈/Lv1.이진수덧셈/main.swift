//
//  main.swift
//  Lv1.이진수덧셈
//
//  Created by kwon ji won on 2023/06/01.
//

import Foundation


let N = Int(readLine()!)
var solution:[String] = []
for _ in 0..<N! {
    let number = readLine()!.split(separator: " ").map { String(Int($0)!) }
    var append = String(Int(number[0], radix: 2)! + Int(number[1], radix: 2)!, radix: 2)
    solution.append(append)
}

for i in solution {
    print(Int(i)!)
}



