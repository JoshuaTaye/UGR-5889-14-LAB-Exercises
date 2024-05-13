fun analyze(s:String){
var wordCount = 0
var uppercaseCount = 0
var vowelCount = 0
    for (char in s) {
        if (char.isLetter()) {
            if (char.isUpperCase()) {
                uppercaseCount++
            }
            if (char.toLowerCase() in "aeiou") {
                vowelCount++
            }
        }
    }
    val words = s.split("\\s+".toRegex())
    wordCount = words.size
    return println(" The string has $wordCount words, Has $uppercaseCount uppercase letters, and $vowelCount vowel letters")
}
var s: String = "Hello World!"
analyze(s)
