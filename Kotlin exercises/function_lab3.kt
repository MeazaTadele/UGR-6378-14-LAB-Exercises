
fun transformToUppercase(strings: List<String>): List<String> {
  return strings.map { it.toUpperCase() }
}


fun filterNumbersGreaterThan(numbers: List<Int>, threshold: Int): List<Int> {
  return numbers.filter { it > threshold }
}


fun calculateSum(numbers: List<Int>): Int {
  return numbers.reduce { acc, num -> acc + num }
}

// Example usage:
fun main() {
  val strings = listOf("hello", "world", "kotlin")
  val numbers = listOf(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

  
  val uppercaseStrings = transformToUppercase(strings)
  println("Uppercase strings: $uppercaseStrings")

  
  val threshold = 5
  val filteredNumbers = filterNumbersGreaterThan(numbers, threshold)
  println("Numbers greater than $threshold: $filteredNumbers")

  
  val sum = calculateSum(numbers)
  println("Sum of all elements: $sum")
}
