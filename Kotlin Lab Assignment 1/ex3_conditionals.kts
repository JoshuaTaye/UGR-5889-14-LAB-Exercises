println("Enter your score:")
val g:Int? = readLine()?.toIntOrNull()
    if (g == null) {
        println("Invalid input for the grade")
    }
    else if (g >= 90){
        println("A")
    }
    else if (g >= 80){
        println("B")
    }
    else if (g >= 70){
        println("C")
    }
    else if (g >= 60){
        println("D")
    }
    else {
        println("F")
    }
