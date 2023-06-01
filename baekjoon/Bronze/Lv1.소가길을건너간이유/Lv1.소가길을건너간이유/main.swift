//
//  main.swift
//  Lv1.소가길을건너간이유
//
//  Created by kwon ji won on 2023/06/01.
//
import Foundation

// 입력값을 저장할 배열
var cows: [Int] = Array(repeating: -1, count: 11)

// 결과값을 저장할 변수
var moves = 0

// 시뮬레이션
let N = Int(readLine()!)!
for _ in 0..<N {
    let cow = readLine()!.split(separator: " ").map { Int($0)! }
    let cowNumber = cow[0]
    let cowPosition = cow[1]

    // 이전 위치와 다른 경우에만 움직임 수 증가
    if cows[cowNumber] != -1 && cows[cowNumber] != cowPosition {
        moves += 1
    }

    // 소의 위치 업데이트
    cows[cowNumber] = cowPosition
}

print(moves)
