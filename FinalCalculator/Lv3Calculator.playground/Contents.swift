// SOLID 원칙 - 단일 책임 원칙 적용
// -> 각 연산을 다른 class로 분리!

enum OperatorType {
    case add
    case subtract
    case multiply
    case divide
    case mod
}

class Calculator {
    // 1. 상태 (프로퍼티)
    let add = AddOperation()
    let subtract = SubtractOperation()
    let multiply = MultiplyOperation()
    let divide = DivideOperation()
    let mod = ModOperation()

    // 2. 동작 (메서드)
    func operation(_ op: OperatorType, _ number1: Double, _ number2: Double) -> Double {
        switch op {
        case .add:
            add.addition(number1, number2)
        case .subtract:
            subtract.subtraction(number1, number2)
        case .multiply:
            multiply.multiplication(number1, number2)
        case .divide:
            divide.division(number1, number2)
        case .mod:
            mod.modulo(Int(number1), Int(number2))
        }
    }
}

class AddOperation {
    func addition(_ number1: Double, _ number2: Double) -> Double {
        number1 + number2
    }
}
/**
  - parameters:
  - number1: 빼기 연산자의 왼쪽에 오는 수
  - number2: 빼기 연산자의 오른쪽에 오는 수
 */
class SubtractOperation {
    func subtraction(_ number1: Double, _ number2: Double) -> Double {
        number1 - number2
    }
}

class MultiplyOperation {
    func multiplication(_ number1: Double, _ number2: Double) -> Double {
        number1 * number2
    }
}

class DivideOperation {
    func division(_ number1: Double, _ number2: Double) -> Double {
        number1 / number2
    }
}

class ModOperation {
    func modulo(_ number1: Int, _ number2: Int) -> Double {
        Double(number1 % number2)
    }
}


let calculator = Calculator()
calculator.operation(.add, 5, 3)        // 8
calculator.operation(.subtract, 5, 3)   // 2
calculator.operation(.multiply, 5, 3)   // 15
calculator.operation(.divide, 5, 3)     // 1.666666666666667
calculator.operation(.mod, 5, 3)        // 2
