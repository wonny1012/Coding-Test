

func solution(_ n:Int) -> Int {
    var number = [0,1]
    
    for i in 2...n {
        number.append(number[i-1]%1234567 + number[i-2]%1234567)
    }
    
    return number[n]%1234567
}
// func solution(_ n: Int) -> Int {
//     var number = [0, 1]
//     var result = 0

//     for i in 2...n {
//         let num1 = number[i-1] >= 1234567 ? number[i-1] % 1234567 : number[i-1]
//         let num2 = number[i-2] >= 1234567 ? number[i-2] % 1234567 : number[i-2]
//         number.append((num1 + num2) % 1234567)
//     }

//     result = number[n]

//     return result
// }
