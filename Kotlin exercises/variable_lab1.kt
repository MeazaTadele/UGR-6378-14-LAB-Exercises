
fun main() {
  println("Enter number:")
  val num1 = readLine()!!.toDouble()

  println("Enter number:")
  val num2 = readLine()!!.toDouble()

  println("Enteroperation:")
  val operation = readLine()!!

  val result = when (operation) {
      "+" -> num1 + num2  
      "-" -> num1 - num2 
      "*" -> num1 * num2 
      "/" -> if (num2 != 0.0) num1 / num2 else "Cannot divide by zero"  
      else -> "Invalid operation"  
  }

  println("Result: $result")
}
