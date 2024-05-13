fun operation() {
    println("Enter the first number:")
    val num1 = readLine()?.toDoubleOrNull()
    if (num1 == null) {
        println("Invalid input for the first number")
        return
    }
    println("Enter the second number:")
    val num2 = readLine()?.toDoubleOrNull()
    if (num2 == null) {
        println("Invalid input for the second number")
        return
    }
    println("Enter the operation (+ , - , * , /):")
    val op = readLine()
    if (op == null) {
        println("Invalid input for the operation")
        return
    }
    val result: Double
    if (op == "+"){
        result = num1 + num2
    }
    else if (op == "-"){
        result = num1 - num2
    }
    else if (op == "*"){
        result = num1 * num2
    }
    else if (op == "/"){
        if (num2 == 0.0){
            println("Error: Division by zero")
            return
        }
        result = num1 / num2
    }
    else {
        println("Invalid operation")
        return
    }
    println("Result: $result")
}
operation()
