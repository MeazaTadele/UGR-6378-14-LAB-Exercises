fun findMax(numbers: List<Int>): Int {
  require(numbers.isNotEmpty()) { "List cannot be empty" }
  var max = numbers[0]
  for (num in numbers) {
      if (num > max) {
          max = num
      }
  }
  return max
}

fun filterEvenNumbers(numbers: List<Int>): List<Int> {
  return numbers.filter { it % 2 == 0 }
}

fun calculateAverage(numbers: List<Double>): Double {
  require(numbers.isNotEmpty()) { "List cannot be empty" }
  var sum = 0.0
  for (num in numbers) {
      sum += num
  }
  return sum / numbers.size
}

// Example usage:
fun main() {
  val intList = listOf(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
  val doubleList = listOf(1.0, 2.0, 3.0, 4.0, 5.0)

  println("Maximum value in the list: ${findMax(intList)}")
  println("List of even numbers: ${filterEvenNumbers(intList)}")
  println("Average of the list: ${calculateAverage(doubleList)}")
}
