func calculate(_ operand1: Int64, _ operand2: Int64, _ op: Character) -> Int64 {
    switch op {
    case "+":
        return operand1 + operand2
    case "-":
        return operand1 - operand2
    case "*":
        return operand1 * operand2
    default:
        fatalError("Invalid operator")
    }
}

func evaluate(_ expression: String, _ priorities: [Character]) -> Int64 {
    var numbers = [Int64]()
    var operators = [Character]()
    var numBuffer = ""
    
    for char in expression {
        if char.isNumber {
            numBuffer.append(char)
        } else {
            numbers.append(Int64(numBuffer)!)
            numBuffer = ""
            operators.append(char)
            // if priorities.contains(char) {
            //     while !operators.isEmpty && priorities.contains(operators.last!) {
            //         let op = operators.removeLast()
            //         let operand2 = numbers.removeLast()
            //         let operand1 = numbers.removeLast()
            //         numbers.append(calculate(operand1, operand2, op))
            //     }
            // }
        }
    }
    numbers.append(Int64(numBuffer)!)

    for priority in priorities {
        var index = 0
        while index < operators.count {
            if operators[index] == priority {
                let operand1 = numbers.remove(at: index)
                let operand2 = numbers.remove(at: index)
                let op = operators.remove(at: index)
                numbers.insert(calculate(operand1,operand2,op), at: index)
            } else {
                index += 1
            }
        }
    }
   
    return abs(numbers.first!)
}

func solution(_ expression: String) -> Int64 {
    let priorities: [[Character]] = [["+", "-", "*"], ["+", "*", "-"], ["-", "+", "*"], ["-", "*", "+"], ["*", "+", "-"], ["*", "-", "+"]]
    var maxResult: Int64 = Int64.min
    
    for priority in priorities {
        let result = evaluate(expression, priority)
        maxResult = max(maxResult, result)
    }
    
    return maxResult
}
