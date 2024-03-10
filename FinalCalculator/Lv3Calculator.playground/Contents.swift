// SOLID 원칙 - 단일 책임 원칙 적용
// -> 각 연산을 다른 class로 분리!

enum Operator {
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
    func operation(_ op: Operator, _ first: Double, _ second: Double) -> Double {
        switch op {
        case .add:
            add.addition(first, second)
        case .subtract:
            subtract.subtraction(first, second)
        case .multiply:
            multiply.multiplication(first, second)
        case .divide:
            divide.division(first, second)
        case .mod:
            mod.modulo(Int(first), Int(second))
        }
    }
}

class AddOperation {
    func addition(_ first: Double, _ second: Double) -> Double {
        first + second
    }
}

class SubtractOperation {
    func subtraction(_ first: Double, _ second: Double) -> Double {
        first - second
    }
}

class MultiplyOperation {
    func multiplication(_ first: Double, _ second: Double) -> Double {
        first * second
    }
}

class DivideOperation {
    func division(_ first: Double, _ second: Double) -> Double {
        first / second
    }
}

class ModOperation {
    func modulo(_ first: Int, _ second: Int) -> Double {
        Double(first % second)
    }
}


let calculator = Calculator()
calculator.operation(.add, 5, 3)        // 8
calculator.operation(.subtract, 5, 3)   // 2
calculator.operation(.multiply, 5, 3)   // 15
calculator.operation(.divide, 5, 3)     // 1.666666666666667
calculator.operation(.mod, 5, 3)        // 2
