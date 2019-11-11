import Foundation
//: [Previous](@previous)

//: # Arrays

/// The type is Array<String>. It could be described as [String] as well
var names: [String] = ["Piotr", "Marcin", "Anna"]
print(names)
// ["Piotr", "Marcin", "Anna"]


var primes = [2, 3, 5, 7]	// Inferred as Array<Int>, or [Int]
print(primes)
// [2, 3, 5, 7]

//: ## Modifying Arrays

names.append("Krystian")
print(names)
// ["Piotr", "Marcin", "Anna", "Krystian"]


primes.append(8)
print(primes)
// [2, 3, 5, 7, 8]

primes.append(11)
print(primes)
// [2, 3, 5, 7, 8, 11]

primes.remove(at: 4)
print(primes)
// [2, 3, 5, 7, 11]

//: ### Arrays are typed
//names.append(11)			// You cannot do that, `names` is an Array of Strings!

//primes.append(UIButton())


//: # Dictionaries

// Type is inferred as [String: Int]
// Dictionary with String keys and Int values
var numberOfLegs = ["ant": 6, "snake": 0, "dog": 4]
print(numberOfLegs)
// ["ant": 6, "snake": 0, "dog": 4]

//: ## Modifying Dictionaries

numberOfLegs["fish"] = 421
print(numberOfLegs)
// ["ant": 6, "fish": 421, "snake": 0, "dog": 4]

numberOfLegs["fish"] = 0
print(numberOfLegs)
// ["ant": 6, "fish": 0, "snake": 0, "dog": 4]

//: ## Accessing values of a dictionary

print(numberOfLegs["ant"])
// Optional(6)

print(numberOfLegs["spider"])
// nil

//: [Next](@next)
