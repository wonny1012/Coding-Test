import Foundation

func solution(_ s: String) -> String {
    var answer = ""
    let words = s.components(separatedBy: " ")

    for word in words {
        var convertedWord = ""
        let characters = Array(word.lowercased())
        print(characters)

        for (index, char) in characters.enumerated() {
            if index == 0 {
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

solution("3people unFollowed me")
