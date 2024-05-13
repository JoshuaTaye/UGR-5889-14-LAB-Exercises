fun Max(numbers: List<Int>): Int? {
    if (numbers.isEmpty()) return null
    var max = numbers[0]
    for (num in numbers) {
        if (num > max) {
            max = num
        }
    }
    return max
}

fun EvenNumbers(numbers: List<Int>): List<Int> {
    return numbers.filter { it % 2 == 0 }
}

fun Average(numbers: List<Double>): Double {
    if (numbers.isEmpty()) return 0.0
    val sum = numbers.sum()
    return sum / numbers.size
}
    val intList = listOf(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    val doubleList = listOf(1.0, 2.0, 3.0, 4.0, 5.0)
    val maxNumber = Max(intList)
    println("Maximum number in the list: $maxNumber")
    val evenNumbers = EvenNumbers(intList)
    println("Even numbers in the list: $evenNumbers")
    val average = Average(doubleList)
    println("Average of the list: $average")
