import Foundation

class Car {

	struct Model: Equatable {
		let mark: String
		let model: String
	}

	let model: Model

	init(model: Model) {
		self.model = model
	}
}
