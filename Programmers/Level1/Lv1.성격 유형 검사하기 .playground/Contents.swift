import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {

    //기본 배열 세팅
    var score = [ 0, 1, 2, 3]
    var dictArray = ["R", "T", "C", "F", "J", "M", "A", "N"]
    var result = [0, 0, 0, 0, 0, 0, 0, 0]
    var rrr = ""
    var count = 0
 
    //값이 4보다 작으면 반대 값에 값을 주고, 4보다 크면 앞에 값에 점수를 매김
     for i in 0..<choices.count {
         var firstStr = survey[i].map { $0 }[0]
         var fitstIndex = dictArray.firstIndex(of : String(firstStr))!
         var num = choices[i]
         if num > 4 {
             result[fitstIndex] += -1*num + 4
         } else {
             result[fitstIndex] += 4 - num
         }
         print(result)
     }
    
    //결과값 매칭
    for i in 0...3 {
        if result[count] >= result[count + 1]{
            rrr += dictArray[count]
        } else{
            rrr += dictArray[count + 1]
        }
        count += 2
    }
    return rrr
}
