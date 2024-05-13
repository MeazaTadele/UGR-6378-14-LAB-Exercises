fun main() {
  val originalPrice = 100.0
  var discountPercentage = 0.55 
  val maxDiscountThreshold = 0.50

  if (discountPercentage > maxDiscountThreshold) {
      println("Discount is too high. It has been set to the maximum allowed threshold.")
      discountPercentage = maxDiscountThreshold // Set discount to maximum threshold if it's too high
  }

  val discountAmount = originalPrice * discountPercentage
  val finalPrice = originalPrice - discountAmount // Calculate final price after discount

  println("Original Price: $$originalPrice")
  println("Discount Percentage: ${discountPercentage * 100}%")
  println("Final Price after Discount: $$finalPrice")
}
