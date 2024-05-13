fun analyzeString(inputString: String): Triple<Int, Int, Int> {

  val wordCount = inputString.split("\\s+".toRegex()).size
  val uppercaseCount = inputString.count { it.isUpperCase() }
  val vowelCount = inputString.count { it.toLowerCase() in listOf('a', 'e', 'i', 'o', 'u') }

  return Triple(wordCount, uppercaseCount, vowelCount)
}

// Example usage:
fun main() {
  val inputString = "This is mobile development class."
  val (wordCount, uppercaseCount, vowelCount) = analyzeString(inputString)
  println("Number of words: $wordCount")
  println("Number of uppercase letters: $uppercaseCount")
  println("Number of vowels: $vowelCount")
}
