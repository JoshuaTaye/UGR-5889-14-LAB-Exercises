    val originalPrice = 100.0
    var discountPercentage = 0.6
    val threshold = 0.5

    if (discountPercentage > 0.5) {
        println("The discount percentage is too high. Setting it to $threshold.")
        discountPercentage = threshold
    }

    val finalPrice = originalPrice * (1 - discountPercentage)

    println("Original Price: \$${originalPrice}")
    println("Discount Percentage: ${(discountPercentage * 100)}%")
    println("Final Price after Discount: \$${finalPrice}")
