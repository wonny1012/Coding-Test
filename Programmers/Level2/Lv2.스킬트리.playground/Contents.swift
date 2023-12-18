import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
   var count = 0
    let skillArray = Array(skill)

    for voca in skill_trees {
        var isValid = true
        var skillIndex = 0

        for char in voca {
            if skillArray.contains(char) {
                if char == skillArray[skillIndex] {
                    skillIndex += 1
                } else {
                    isValid = false
                    break
                }
            }
        }

        if isValid {
            count += 1
        }
    }

    return count
}
