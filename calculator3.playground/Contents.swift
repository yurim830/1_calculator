// ====================================================
// 레벨 3
class Calculator {
    var op: String
    init(_ op: String) {
        self.op = op
    }
    
    func calculate(firstNumber: Double, secondNumber: Double) -> Double {
        switch op {
        case "+" :
            let add = AddOperation()
            return add.calculate(firstNumber, secondNumber)
        
        case "-" :
            let subtract = SubstractOperation()
            return subtract.calculate(firstNumber, secondNumber)
            
        case "*" :
            let multiply = MultiplyOperation()
            return multiply.calculate(firstNumber, secondNumber)
            
        case "/" :
            let divide = DivideOperation()
            return divide.calculate(firstNumber, secondNumber)
            
        default :
            return 0
        }
    }
    
}

class AddOperation {
    func calculate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return firstNumber + secondNumber
    }
}

class SubstractOperation {
    func calculate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return firstNumber - secondNumber
    }
}

class MultiplyOperation {
    func calculate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
      return firstNumber * secondNumber
    }
}

class DivideOperation {
    func calculate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return firstNumber / secondNumber
    }
}


// 실행

let addResult = Calculator("+").calculate(firstNumber: 10, secondNumber: 3)
let subtractResult = Calculator("-").calculate(firstNumber: 10, secondNumber: 3)
let multiplyResult = Calculator("*").calculate(firstNumber: 10, secondNumber: 3)
let divideResult = Calculator("/").calculate(firstNumber: 10, secondNumber: 3)

print("addResult : \(addResult)")
print("subtractResult : \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")

