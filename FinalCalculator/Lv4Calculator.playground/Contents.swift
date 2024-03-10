// 추상화 : 가리고 싶은 것은 가리기
class AbstractOperation {
    func operate(_ first: Double, _ second: Double) -> Double {
        return -1
    }
}

class AddOperation: AbstractOperation {
    override func operate(_ first: Double, _ second: Double) -> Double {
        first + second
    }
}

class SubtractOperation: AbstractOperation {
    override func operate(_ first: Double, _ second: Double) -> Double {
        first - second
    }
}

class MultiplyOperation: AbstractOperation {
    override func operate(_ first: Double, _ second: Double) -> Double {
        first * second
    }
}

class DivideOperation: AbstractOperation {
    override func operate(_ first: Double, _ second: Double) -> Double {
        first / second
    }
}

class ModOperation: AbstractOperation {
    override func operate(_ first: Double, _ second: Double) -> Double {
        Double(Int(first) % Int(second))
    }
}

enum OperatorType {
    case add
    case subtract
    case multiply
    case divide
    case mod
}

class Calculator {
    var operation: AbstractOperation?
        // 다형성: 하나의 인스턴스를 여러가지 타입으로 다루게 하는 것.
        // AbstractOperation의 하위 클래스 타입도 사용할 수 있음.

    func operation(_ first: Double, _ second: Double) -> Double {
        operation?.operate(first, second)
    }
}


let calculator = Calculator()
//calculator.operation(.add, 5, 3)        // 8
//calculator.operation(.subtract, 5, 3)   // 2
//calculator.operation(.multiply, 5, 3)   // 15
//calculator.operation(.divide, 5, 3)     // 1.666666666666667
//calculator.operation(.mod, 5, 3)        // 2

