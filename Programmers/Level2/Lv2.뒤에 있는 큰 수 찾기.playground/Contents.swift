import Foundation

func solution(_ numbers: [Int]) -> [Int] {
    var result = Array(repeating: -1, count: numbers.count)
    var stack = [Int]()

    for i in 0..<numbers.count {
        while !stack.isEmpty && numbers[i] > numbers[stack.last!] {
            let lastIndex = stack.removeLast()
            print(i)
            result[lastIndex] = numbers[i]
        }
        stack.append(i)
        // print(stack)
    }

    return result
}
