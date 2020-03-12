import Foundation

//MARK: - 1

let number1 = 5
let number2 = 4

print("Input Number1: \(number1)")
print("Input Number2: \(number2)")
print("\n")
print("Summary == \(number1) + \(number2) = \(number1 + number2)")
print("Different == \(number1) - \(number2) = \(number1 - number2)")
print("Multiply == \(number1) x \(number2) = \(number1 * number2)")
print("Divide == \(number1) / \(number2) = \(Float(number1) / Float(number2))")


// MARK: - 2

let currency = 5_346
print("***********************************")
print("Input Currency: \(currency)")
print("***********************************")

let bank1000 = currency / 1_000
print("Bank 1000 = \(bank1000)")
var remain = currency % 1000
let bank500 = remain / 500
print("Bank 500 = \(bank500)")
remain = currency % 500
let bank100 = remain / 100
print("Bank 100 = \(bank100)")
remain = currency % 100
let bank50 = remain / 50
print("Bank 50 = \(bank50)")
remain = currency % 50
let bank20 = remain / 20
print("Bank 20 = \(bank20)")
remain = currency % 20
let coin10 = remain / 10
print("Coin 10 = \(coin10)")
remain = currency % 10
let coin5 = remain / 5
print("Coin 5 = \(coin5)")
remain = currency % 5
let coin2 = remain / 2
print("Coin 2 = \(coin2)")
print("Coin 1 = \(remain)")
print("***********************************")


// MARK: - 3

var number = 7

if number % 2 == 0 {
    print("Number is Even")

    number -= 1


    let isMod3OrMod5Corrected = (number % 3 == 0) && (number % 5 == 0)

    print(isMod3OrMod5Corrected)
} else {
    print("Number is Odd")

    number += 1

    let isMod2OrMod6Corrected = (number % 2 == 0) || (number % 6 == 0)

    print(isMod2OrMod6Corrected)
}

// MARK: - 4

for number in 1...12 {
    for multiplier in 1...12 {
        print("\(number) x \(multiplier) = \(number * multiplier)")
    }

    print("***********************************")
}

// MARK: - 5
// ต้อง Optimize performance ถ้าถึง 100,000

var primeNumbers: String = ""
var isPrime: Bool = true

for number1 in 2...100 {
    isPrime = true

    for number2 in 2..<number1 {
        if number1 == 2 {
            primeNumbers = primeNumbers + "\(number1) "
        }

        if number1 % number2 == 0 {
            isPrime = false
            break
        }
    }

    if isPrime {
        primeNumbers = primeNumbers + "\(number1) "
    }
}

print(primeNumbers)
print("\n")


// MARK: - 6

// 6.1

var stars = ""

for index in 1...4 {
    stars = ""

    for _ in 1...index {
        stars += "*"
    }

    print(stars)
}

print("\n")

// 6.2

var stars2 = ""
var totalLines = 4

for currentLine in 1...totalLines {
    stars2 = ""
    
    for _ in 1..<(totalLines - currentLine + 1) {
        stars2 += " "
    }
    
    for _ in 1...currentLine {
        stars2 += "* "
    }

    print(" " + stars2)
}

print("\n")

// 6.3

var stars3 = ""

for _ in 1...4 {
    stars3 = ""
    for _ in 1...4 {
        stars3 += "*"
    }

    print(stars3)
}

print("\n")


// 6.4

var stars4 = ""
var totalLines4 = 4

for currentLine in 1...totalLines4 {
    stars4 = ""
    
    for _ in 1..<(totalLines4 - currentLine + 1) {
        stars4 += " "
    }
    
    for row in 1...currentLine {
        if  (currentLine > 2 && currentLine < totalLines4)
            && (row >= 2 && row < currentLine) {
            stars4 += "  "
        } else {
            stars4 += "* "
            
        }
    }

    print(" " + stars4)
}

print("\n")

// 6.5

var stars5 = ""

for index in 1...4 {
    stars5 = ""
    let max = 4 * index

    for _ in 1...max {
        stars5 += "*"
    }

    print(stars5)
}

print("\n")

// MARK: - 7

let score = 40

switch score {
case 80...100:
    print("Grade A")
case 75...79:
    print("Grade B+")
case 70...74:
    print("Grade B")
case 65...69:
    print("Grade C+")
case 60...64:
    print("Grade C")
case 55...59:
    print("Grade D+")
case 50...54:
    print("Grade D")
case 0...49:
    print("Grade F")
default:
    print("Error, score isn't corrected.")
}




