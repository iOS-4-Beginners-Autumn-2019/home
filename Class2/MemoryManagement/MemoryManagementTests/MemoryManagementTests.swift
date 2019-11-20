import XCTest
@testable import MemoryManagement

class MemoryManagementTests: XCTestCase {

	let mark1 = Car.Model(mark: "Porsche", model: "911")
	let mark2 = Car.Model(mark: "Renault", model: "Megane")

	func testCarApi1() {
		let car = Car(model: mark1)
		XCTAssertEqual(car.model, mark1)
		XCTAssertNotEqual(car.model, mark2)
	}

	func testCarApi2() {
		let car = Car(model: mark1)
		XCTAssertNil(car.owner)
	}

	func testPersonApi1() {
		let person = Person(name: "Piotr")
		XCTAssertEqual(person.name, "Piotr")
	}

	func testPersonApi2() {
		let person = Person(name: "Piotr")
		XCTAssertNil(person.car)
	}

	func testBuyApi() {
		let car = Car(model: mark1)
		let person = Person(name: "Piotr")
		person.buy(car: car)
		XCTAssertTrue(car === person.car)
		XCTAssertTrue(car.owner === person)
	}

	func testCarAndPersonDeallocs1() {
		weak var car: Car? = nil
		weak var person: Person? = nil
		do {
			let car1 = Car(model: mark1)
			let person1 = Person(name: "Piotr")
			car = car1
			person = person1
		}
		XCTAssertNil(car)
		XCTAssertNil(person)
	}

	func testCarAndPersonDeallocs2() {
		weak var car: Car? = nil
		weak var person: Person? = nil
		do {
			let car1 = Car(model: mark1)
			let person1 = Person(name: "Piotr")
			car = car1
			person = person1

			person1.buy(car: car1)
		}
		XCTAssertNil(car)
		XCTAssertNil(person)
	}

	func testCarAndPersonDeallocs3() {
		weak var car: Car? = nil
		var person: Person? = nil
		do {
			let car1 = Car(model: mark1)
			let person1 = Person(name: "Piotr")
			car = car1
			person = person1

			person1.buy(car: car1)
		}
		XCTAssertNotNil(car)
		XCTAssertNotNil(person)
	}

	func testCarAndPersonDeallocs4() {
		var car: Car? = nil
		weak var person: Person? = nil
		do {
			let car1 = Car(model: mark1)
			let person1 = Person(name: "Piotr")
			car = car1
			person = person1

			person1.buy(car: car1)
		}
		XCTAssertNotNil(car)
		XCTAssertNil(person)
		XCTAssertNil(car?.owner)
	}
}
