fun main() {
  println("Enter mark")
  val mark = readLine()!!.toDouble()
  
  
  val grade = if(mark >100){
      "mark can not be higher that 100"
  }else if (mark >= 90){
      "A"
  }else if (mark >=80){
      "B"
  }else if (mark >=70){
      "C"
  }else if(mark>=60){
      "D"
  }
  else if (mark <0){
      "mark can not be negative"
  
  }else{
      "fail"
  }
  println(grade)
}