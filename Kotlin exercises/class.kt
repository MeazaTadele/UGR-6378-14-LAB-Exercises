class BankAccount(private val accountNumber: String, private var balance: Double) {
    
  fun deposit(amount: Double) {
      require(amount > 0) { "Amount must be positive for deposit" }
      balance += amount
  }
  
  fun withdraw(amount: Double) {
      require(amount > 0) { "Amount must be positive for withdrawal" }
      require(balance >= amount) { "Insufficient funds for withdrawal" }
      balance -= amount
  }
  
  fun printBalance() {
      println("Account Number: $accountNumber")
      println("Current Balance: $balance")
  }
}

// Example usage:
fun main() {

  val account = BankAccount("123456789", 1000.0)
  
  account.deposit(500.0)
  
  account.withdraw(200.0)

  account.printBalance()
}
