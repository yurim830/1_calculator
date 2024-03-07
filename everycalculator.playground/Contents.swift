/*
// 레벨 1 : 사칙연산 구현
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
*/


/* ======================================================================
 
// 레벨 2 : 나머지 연산 추가
 
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


 */



/* ======================================================================
 
 // 레벨 3 : 연산자별로 클래스 따로 만들고 Calculator 클래스와 관계 맺기
 
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
 
 */


/* ====================================================================== */
 
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

 // 연산 클래스들
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


