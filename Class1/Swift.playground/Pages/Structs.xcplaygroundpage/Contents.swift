//: [Previous](@previous)

import Foundation

//: ## Basic Structs and mutability
struct Point {
	//: Try changing x and y to let constants and see what happens
	var x: Double
	var y: Double

	init(x: Double, y: Double) {
		self.x = x
		self.y = y
	}
}

/// This defines a constant point (it cannot be changed)
let point1: Point = Point(x: 10.0, y: 10.0)

//: Not possible: cannot mutate a let constant
//point1.x = 12.0

/// This is a Point variable, so we'll be able to mutate it
var point2 = Point(x: 1.0, y: 1.0)
point2.x = 15.0


//: ## Initializers, computed properties
struct Size {
	var width: Double
	var height: Double


	/// This is the main initializer
	///
	/// - Parameters:
	///   - width: width of the size
	///   - height: height of the size
	init(width: Double, height: Double) {
		self.width = width
		self.height = height
	}

	/// Initializes a square size
	///
	/// - Parameter side: both width and height of the new size
	init(side: Double) {
		self.width = side
		self.height = side
	}

	//: This is a computed property

	/// Computes the area of the size
	var area: Double {
		return width * height
	}
}

//: [Next](@next)
