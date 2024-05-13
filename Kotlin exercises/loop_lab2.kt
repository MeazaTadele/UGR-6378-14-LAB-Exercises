import kotlin.random.Random

fun generateRandomPassword(length: Int): String {
    val passwordChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()_+-=[]{}|;:,.<>?".toCharArray()
    val password = StringBuilder()

    repeat(length) {
        val randomIndex = Random.nextInt(passwordChars.size)
        password.append(passwordChars[randomIndex])
    }

    return password.toString()
}

fun main() {
    val passwordLength = 8
    val generatedPassword = generateRandomPassword(passwordLength)
    println("Generated Password: $generatedPassword")
}
