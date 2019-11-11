import Foundation
//: [Previous](@previous)

//: # Classes

/// Represents a person
class Person {

	// MARK: - Instance variables

	// Names are constant
	let firstName: String
	let lastName: String

	// Age can change
	var age: Int

	// A computed property
	var fullName: String {
		return firstName + " " + lastName
	}

	// MARK: - Initializers
	init(firstName: String, lastName: String, age: Int) {
		self.firstName = firstName
		self.lastName = lastName
		self.age = age
	}

	// MARK: - Methods
	func sayHello() {
		print("Hi! My name is \(fullName).")
	}
}


//: ### Tworzenie nowego obiektu
let me = Person(firstName: "Michał", lastName: "Dąbrowski", age: 26)
print(me.fullName)
//me.firstName = "Piotr"		// Cannot mutate a let constant
//me.lastName = "Wierzbicki"	// Cannot mutate a let constant
me.age = 27
//me = Person(firstName: "Marcin", lastName: "Dąbrowski", age: 25)		// Cannot mutate a let constant

//: ### Wywołanie metody
me.sayHello()


//: ## Subclass
class Student: Person {

	let albumId: String

	init(firstName: String, lastName: String, age: Int, albumId: String) {
		self.albumId = albumId
		super.init(firstName: firstName, lastName: lastName, age: age)
	}

	override func sayHello() {
		print("Hello! I'm a student named \(fullName).")
	}
}

let aStudent = Student(firstName: "Piotr", lastName: "Nowak", age: 22, albumId: "34534213")
aStudent.sayHello()

//: [Next](@next)
