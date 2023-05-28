
func solution(_ s:String) -> Bool {
    var result = false
    var number = ["1","2","3","4","5","6","7","8","9","0"]
    var numsort = s.map { $0 }.sorted(by: >)

    if numsort.count == 4 ||  numsort.count == 6 {
        if number.contains(String(numsort[0])) {
            result = true
        }
    }
    return result
}

solution("1234")
