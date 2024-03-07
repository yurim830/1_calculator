
// ====================================================
// 레벨 4 : 추상화

class Calculator {
    var op: String
    init(_ op: String) {
        self.op = op
    }
    // op 바꾸는 함수 추가
    func changeOp(otherOp: String) {
        op = otherOp
    }
    
    func calculate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
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

// 추상화된 클래스 만들기
class AbstractOperation {
    func calculate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return firstNumber + secondNumber
    }
}

// 연산 클래스
class AddOperation: AbstractOperation {
    override func calculate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return firstNumber + secondNumber
    }
}

class SubstractOperation: AbstractOperation {
    override func calculate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return firstNumber - secondNumber
    }
}

class MultiplyOperation: AbstractOperation {
    override func calculate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
      return firstNumber * secondNumber
    }
}

class DivideOperation: AbstractOperation {
    override func calculate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return firstNumber / secondNumber
    }
}


// 실행
// 덧셈계산기 만들기
let calculator = Calculator("+")
let addResult = calculator.calculate(10, 3)

// 뺄셈계산기로 변경하기 - 프로퍼티 변경함수 changeOp 호출
calculator.changeOp(otherOp: "-")
let subtractResult = calculator.calculate(10, 3)

// 곱셈계산기로 변경하기
calculator.changeOp(otherOp: "*")
let multiplyResult = calculator.calculate(10, 3)

// 나눗셈계산기로 변경하기
calculator.changeOp(otherOp: "/")
let divideResult = calculator.calculate(10, 3)

print("addResult : \(addResult)")
print("subtractResult : \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")

