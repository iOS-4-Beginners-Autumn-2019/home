import Foundation

class Person {
	let name: String

	init(name: String) {
		self.name = name
		print("\(name) is being initialized")
	}

	deinit {
		print("\(name) is being deinitialized")
	}

	// TODO:
/*
	func buy(car: Car) {

	}
*/
}
