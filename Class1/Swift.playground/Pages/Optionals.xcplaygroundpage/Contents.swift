import Foundation
//: [Previous](@previous)

//: # Optionals

let numberOfLegs = ["ant": 6, "snake": 0, "dog": 4]
// numberOfLegs type is inferred as [String: Int]

// The type of possibleAntLegsCount is inferred as Int?
let possibleAntLegsCount = numberOfLegs["ant"]

if possibleAntLegsCount == nil {
	print("Number of legs not found 😭")
} else {
	let antLegsCount = possibleAntLegsCount!
	// Type of antLegsCount inferred as Int
	print("Number of legs for an ant is \(antLegsCount)! 😁🐜")
}
// Number of legs for an ant is 6! 😁🐜

//: ## if-let statement

if let snakeLegsCount = numberOfLegs["snake"] {
	//snakeLegsCount type is inferred as Int
	print("Number of legs for a snake is \(snakeLegsCount)! 🐍")
}
// Number of legs for a snake is 0! 🐍

if let spiderLegsCount = numberOfLegs["spider"] {
	print("Number of legs for a spider is \(spiderLegsCount)! 🕷")
} else {
	print("Spider legs count not found 😭")
}
// Spider legs count not found 😭

//: ## Optionals and functions

//: Optionals are used to represent values that could not be there

func findIndex(of str: String, in array: [String]) -> Int? {
	for (index, value) in array.enumerated() {
		if value == str {
			return index
		}
	}
	return nil
}

let languages = ["Swift", "ObjC", "Kotlin", "Ruby", "C", "C#", "C++", "Java", "Python"]

let possibleSwiftIndex = findIndex(of: "Swift", in: languages)	//Optional(0)
if let swiftIndex = possibleSwiftIndex {
	print("Swift is at index \(swiftIndex)")
} else {
	print("😭")
}
// Swift is at index 0

if let prologIndex = findIndex(of: "Prolog", in: languages) {
	print("I know \(languages[prologIndex])")
} else {
	print("😭")
}
// 😭

if let rubyIndex = findIndex(of: "Ruby", in: languages) {
	print("I know \(languages[rubyIndex]) (at index \(rubyIndex))")
} else {
	print("😭")
}
// I know Ruby (at index 3)


//: [Next](@next)
