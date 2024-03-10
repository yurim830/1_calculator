class Calculator {
    func addition(_ first: Double, _ second: Double) -> Double {
        first + second
    }
    /** first - second */
    func subtraction(_ first: Double, _ second: Double) -> Double {
        first - second
    }
    func multiplication(_ first: Double, _ second: Double) -> Double {
        first * second
    }
    func division(_ first: Double, _ second: Double) -> Double {
        first / second
    }
    func mod(_ first: Int, _ second: Int) -> Int {
        first % second
    }
}

let calculator = Calculator()
calculator.addition(3,2)
calculator.subtraction(3, 2)
calculator.multiplication(3, 2)
calculator.division(3,2)
calculator.mod(3,2)
