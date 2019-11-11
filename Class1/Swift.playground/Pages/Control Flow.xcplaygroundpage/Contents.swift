import Foundation
//: [Previous](@previous)

//: # Control Flow

//: ## IF statement

let numberOfLegs = 1 // Int

if numberOfLegs == 0 {
	print ("Czołga się")
} else {
	print("Chodzi")
}
// Chodzi

if numberOfLegs == 0 {
	print ("Czołga się")
} else if numberOfLegs == 1 {
	print("Skacze")
} else {
	print("Chodzi")
}
// Skacze

//: ## Switch statement

switch numberOfLegs {
case 0:
	print ("Czołga się")
case 1:
	print("Skacze")
default:
	print("Chodzi")
}
// Skacze

let otherNumberOfLegs = 5
switch otherNumberOfLegs {
case 0:
	print ("Czołga się")
case 1:
	print("Skacze")
case let x where x%2 != 0:
	print("Utyka")
default:
	print("Chodzi")
}
// Utyka

//: ## For loop
for i in 0..<4 {
	print("\(i) times 3 equals \(i * 3)")
}
// 0 times 3 equals 0
// 1 times 3 equals 3
// 2 times 3 equals 6
// 3 times 3 equals 9

for character in "Majonez" {
	print(character)
}
// M a j o n e z

let namesArray = ["Anna", "Piotr", "Maciej"]		// Inferred as [String]
for name in namesArray {
	// name is inferred as String (because namesArray is inferred as [String])
	print("Hello \(name)!")
}
// Hello Anna!
// Hello Piotr!
// Hello Maciej!

let numberOfLegsDictionary = ["ant": 6, "dog": 4, "snake": 0]	// Inferred as [String: Int]
for (animal, legs) in numberOfLegsDictionary {
	// animal: String
	// legs: Int
	print ("\(animal.capitalized) has \(legs) legs")
}
// Ant has 6 legs
// Snake has 0 legs
// Dog has 4 legs

//: C-style for statement has been removed in Swift 3
//for var i = 0; i<100; i++ { }

//: ## While loop
var counter = 0
while counter < 5 {
	print(counter)
	counter += 2
//	counter++		// Operator ++ nie istnieje w Swifcie
}
// 0 2 4


//: [Next](@next)
