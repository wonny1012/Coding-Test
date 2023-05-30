
func solution(_ s:String) -> String {
    var split = s.split(separator: " ")
    var result:[String] = []
    for i in 0..<split.count {

        var mapping = split[i].map { $0 }
        print(mapping)
        
        for j in 1...mapping.count {
            if j%2 != 0 {
                result.append(mapping[j-1].uppercased())
            } else {
                result.append(String(mapping[j-1]))
            }
        }
        result.append(" ")
    }
    result.dropLast()
    
    return result.joined()
}

solution(" try hello world")
