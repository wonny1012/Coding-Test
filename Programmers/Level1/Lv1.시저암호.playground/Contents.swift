func solution(_ s:String, _ n:Int) -> String {
     var smallalphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    var bigalphabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    var array = s.map { String($0) }
    var count = 0
    var result = ""
    
    for i in array {
        if bigalphabet.contains(i) {
            count = bigalphabet.firstIndex(of: i)! + n
            if count > bigalphabet.count - 1 {
                count = count - bigalphabet.count
            }
            result = result + bigalphabet[count]
        } else if smallalphabet.contains(i) {
            count = smallalphabet.firstIndex(of: i)! + n
            if count > smallalphabet.count - 1 {
                count = count - smallalphabet.count
            }
            result = result + smallalphabet[count]
        } else {
            result = result + " "
        }
    }
    return result
}
