fun uppercaseTransformation(strings: List<String>): List<String> {
    return strings.map { it.toUpperCase() }
}
fun numbersGreaterThan(numbers: List<Int>, threshold: Int): List<Int> {
    return numbers.filter { it > threshold }
}
fun calculateSum(numbers: List<Double>): Double {
    return numbers.reduce { acc, num -> acc + num }
}
    val strings = listOf("Kotlin", "lab", "exercise")
    val numbers = listOf(1, 5, 10, 15, 20)
    val doubles = listOf(1.5, 2.5, 3.5, 4.5)
    val uppercaseStrings = uppercaseTransformation(strings)
    println("Uppercase strings: $uppercaseStrings")
    val filteredNumbers = numbersGreaterThan(numbers, 10)
    println("Numbers greater than 10: $filteredNumbers")
    val sum = calculateSum(doubles)
    println("Sum of numbers: $sum")

