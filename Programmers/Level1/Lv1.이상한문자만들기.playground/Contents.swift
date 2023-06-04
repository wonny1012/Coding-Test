func solution(_ s:String) -> String {
    var split = s.split(separator: " ")
    var result: [String] = []
    var smallalphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","x","z"]
    var bigalphabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    
    for i in 0..<split.count {
        var mapping = split[i].map { String($0) }
        for j in 1...mapping.count {
            if j%2 == 1 {
                //1,1 2,0 3,1 4,0
                if smallalphabet.contains(mapping[j-1]) || bigalphabet.contains(mapping[j-1]) {
                    result.append(mapping[j-1].uppercased())
                } else {
                    result.append(mapping[j-1])
                }
                
            } else {
                 if smallalphabet.contains(mapping[j-1]) || bigalphabet.contains(mapping[j-1]) {
                    result.append(mapping[j-1].lowercased())
                } else {
                    result.append(mapping[j-1])
                }
               
            }
        }
        if i != split.count-1 {
            result.append(" ")
        }
    }
    return result.joined()
}

solution("    het  jea!!!!!@@#$#  ")
