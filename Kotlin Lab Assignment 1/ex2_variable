fun unit_conversion(d:Int, u:String, t: String){
    val result = (
        if (u == "m" && t == "cm") {
            d * 100
        }
        else if (u == "m" && t == "mm") {
            d * 1000
        }
        else if (u == "m" && t == "km") {
            d * 0.001
        }
        else if (u == "cm" && t == "m") {
            d * 0.01
        }
        else if (u == "cm" && t == "mm") {
            d * 10
        }
        else if (u == "cm" && t == "km") {
            d * 0.00001
        }
        else if (u == "mm" && t == "m") {
            d * 0.001
        }
        else if (u == "mm" && t == "cm") {
            d * 0.1
        }
        else if (u == "mm" && t == "km") {
            d * 0.000001
        }
        else if (u == "km" && t == "m") {
            d * 1000
        }
        else if (u == "km" && t == "cm") {
            d * 100000
        }
        else if (u == "km" && t == "mm") {
            d * 1000000
        }
        else {
            println("Invalid unit")
            return
        }
            )
    println("Result: $d $u is equal to $result $t")
}

val distance:Int  = 1000
val initial_unit = "m"
val target_unit = "km"
unit_conversion(distance, initial_unit, target_unit)
