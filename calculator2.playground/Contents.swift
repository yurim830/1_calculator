class Calculator {
    
    // 계산 함수 정의
    func calculate(op:String, _ firstNumber:Double, _ secondNumber:Double) -> Double { // 파라미터명으로 'operator'을 못 쓰는 이유: Swift에서 이미 정의된 키워드라서
        var result: Double
        
        switch op {
        case "+" :
            result = firstNumber + secondNumber
        case "-" :
            result = firstNumber - secondNumber
        case "*" :
            result = firstNumber * secondNumber
        case "/" :
            result = firstNumber / secondNumber
        case "%" :
            result = firstNumber.truncatingRemainder(dividingBy: secondNumber) // % 연산자는 Int끼리 연산할 때만 사용 가능하다.
        default: result = 0
        }
        
        return result
    }
}



// Todo : calculator 변수를 활용하여 사칙연산을 진행
let calculator = Calculator() // 인스턴스 생성하여 변수에 할당
let addition = calculator.calculate(op: "+", 10, 3)
let subtraction = calculator.calculate(op: "-", 10, 3)
let multiplication = calculator.calculate(op: "*", 10, 3)
let division = calculator.calculate(op: "/", 10, 3)
let remainder = calculator.calculate(op: "%", 10, 3)


