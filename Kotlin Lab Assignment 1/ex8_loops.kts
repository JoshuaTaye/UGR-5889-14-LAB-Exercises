fun RandomPassword(length: Int): String {
    val allowed = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()_-+=<>?|{}[]"
    val password = StringBuilder(length)
    repeat(length) {
        val randomIndex = (0 until allowed.length).random()
        password.append(allowed[randomIndex])
    }
    return password.toString()
}
val passwordLength = 12
val generatedPassword = RandomPassword(passwordLength)
println("Generated Password: $generatedPassword")

