import Foundation
//: [Previous](@previous)

class Person {
	/*TODO*/var home: Apartment?
	/*TODO*/var creditCard: CreditCard?


	func move(in apartment: Apartment) {
		home = apartment
		apartment.tenant = self
	}

	deinit { print("\(type(of: self)): \(#function)") }
}

class Apartment {
	/*TODO*/var tenant: Person?
	deinit { print("\(type(of: self)): \(#function)") }
}

class CreditCard {
	/*TODO*/let holder: Person

	init(holder: Person) {
		self.holder = holder
	}

	deinit { print("\(type(of: self)): \(#function)") }
}

//TODO: Create an apartment, create a person and a credit card


//: [Next](@next)
