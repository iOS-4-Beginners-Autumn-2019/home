import Foundation

protocol Counter {
	func increment()
	func decrement()
	func randomize()
	var value: Int { get }
}

class CounterImpl: Counter {

	private(set) var value: Int

	init(value: Int) {
		self.value = value
	}

	convenience init() {
		self.init(value: 0)
	}

	func increment() {
		value += 1
	}

	func decrement() {
		value -= 1
	}

	func randomize() {
		value = Int.random(in: -100...100)
	}
}
