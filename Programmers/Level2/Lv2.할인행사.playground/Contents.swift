import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var sum = number.reduce(0) { $0 + $1 }
    var wantArray:[String] = []
    var result = 0
    for i in 0..<want.count {
        for num in 0..<number[i] {
            wantArray.append(want[i])
        }
    }
    print(discount.count)
    
    for j in 0...(discount.count - sum) {
        if want.contains(discount[j]) {
            var sort:[String] = []
            for i in j..<j+sum {
                sort.append(discount[i])
            }
            if wantArray.sorted() == sort.sorted() {
                result += 1
            }
        }
        
    }
    return result
}

solution(["banana", "apple", "rice", "pork", "pot"], [3, 2, 2, 2, 1], ["chicken", "apple", "apple", "banana", "rice", "apple", "pork", "banana", "pork", "rice", "pot", "banana", "apple", "banana"])

