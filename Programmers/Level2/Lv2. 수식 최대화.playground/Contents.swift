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
            
            if priorities.contains(char) {
                while !operators.isEmpty && priorities.contains(operators.last!) {
                    let op = operators.removeLast()
                    let operand2 = numbers.removeLast()
                    let operand1 = numbers.removeLast()
                    numbers.append(calculate(operand1, operand2, op))
                }
            }
            
            operators.append(char)
        }
    }
    
    numbers.append(Int64(numBuffer)!)
    
    while !operators.isEmpty {
        let op = operators.removeLast()
        let operand2 = numbers.removeLast()
        let operand1 = numbers.removeLast()
        numbers.append(calculate(operand1, operand2, op))
    }
    print(numbers)
    return numbers.first!
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
