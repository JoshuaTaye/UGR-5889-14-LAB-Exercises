class Account(val acc: String, var bal: Double) {
    fun deposit(count: Double) {
        if (count > 0) {
            bal += count
            println("Deposited $count Birr. Current balance is $bal")
        } else {
            println("Invalid amount.")
        }
    }
    fun withdraw(amount: Double) {
        if (amount > 0) {
            if (bal >= amount) {
                bal -= amount
                println("Withdrawn $amount birr. Current balance is $bal")
            } else {
                println("Insufficient Balance.")
            }
        } else {
            println("Invalid amount.")
        }
    }

    fun printBalance() {
        println("Current balance is $bal birr")
    }
}
val account = Account("123456789", 1000.0)
account.printBalance()
account.deposit(500.0)
account.withdraw(200.0)
account.withdraw(1500.0)

