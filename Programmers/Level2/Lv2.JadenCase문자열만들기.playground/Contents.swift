func solution(_ s: String) -> String {
    var answer = ""
    let words = s.components(separatedBy: " ")

    for word in words {
        var convertedWord = ""
        let characters = Array(word.lowercased())

        for (index, char) in characters.enumerated() {
            if index == 0 || characters[index - 1] == " " {
                convertedWord += String(char).uppercased()
            } else {
                convertedWord += String(char)
            }
        }

        answer += convertedWord + " "
    }

    answer.removeLast()
    return answer
}
