import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var check1 = [5,1,2,3,4]
    var check2 = [5,2,1,2,3,2,4,2]
    var check3 = [5,3,3,1,1,2,2,4,4,5]
    var score = [0,0,0]
    var result:[Int] = []
    var number = answers.count
    for i in 1...number {
        if answers[i-1] == check1[(i%check1.count)] {
            score[0] += 1
        }
        if answers[i-1] == check2[(i%check2.count)] {
            score[1] += 1
        }
        if answers[i-1] == check3[(i%check3.count)] {
            score[2] += 1
        }
    }
    var max = score.max()!
    print(score)
    for q in 0..<3 {
        if max == score[q] {
            result.append(q+1)
        }
    }
    
    return result
}

solution([1,2,3,4,5])
