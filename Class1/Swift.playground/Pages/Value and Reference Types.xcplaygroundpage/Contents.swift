//: [Previous](@previous)

import Foundation

/*:
Enums and Structs are value types. This means they are handed over to functions as copies
Classes are reference types. This means they are passed around by reference
*/

struct Point {
	var x, y: Double
}

class Window {
	//....
	//....

	var position: Point

	init(position: Point) {
		self.position = position
	}
}

/*:
## Zadanie 1
This DOESN'T WORK on purpose
*/
func moveHorizontally(_ window: Window, by x: Double) {
	var position = window.position
	position.x = position.x + x
}


let p1 = Point(x: 0, y: 0)
let window = Window(position: p1)

print("BEFORE")
print(p1)
print(window.position)

moveHorizontally(window, by: 100.0)

print("AFTER")
print(p1)
print(window.position)

//: [Next](@next)
