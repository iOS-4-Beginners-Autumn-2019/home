import Foundation

//: # Enums

//: ### Basic Enumeration
enum Compass {
	case north
	case south
	case east
	case west
}

var directionToGoFromHere = Compass.north
print(directionToGoFromHere)

directionToGoFromHere = .south		// You could write Compass.south, but the compiler already knows the type of `directionToGoFromHere`
print(directionToGoFromHere)


//: ### Enum + Switch = 💪🏼

switch directionToGoFromHere {
	case .north:
		print("We're going north")
	case .south:
		print("Did you see the penguins?")
	case .east:
		print("The sun rises here")
	case .west:
		print("The sun sets here")
}

enum Planet {
	case mercury
	case venus
	case earth
	case mars
	case jupiter
	case saturn
	case uranus
	case neptune
	//	case pluto 😢🌎
}

let somePlanet: Planet = .earth

//: Remember that switch statements must be exhaustive in Swift
switch somePlanet {
	case .earth: print("Safe for humans")
	default: print("Not safe for humans!!! 💀")
}

//: ### Associated value

enum Barcode {
	case upc(Int, Int, Int, Int)
	case qrCode(String)
}

var productBarcode = Barcode.qrCode("ABCDEFGHIJKLMNOP")
productBarcode = .upc(8, 85909, 51226, 3)

switch productBarcode {
	case .upc(let numberSystem, let manufacturer, let product, let check):
		print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
	case .qrCode(let productCode):
		print("QR code: \(productCode).")
}

//: ### Enums with raw value

enum CardSuit: Character {
	case clubs = "♣️"
	case diamonds = "♦️"
	case spades = "♠️"
	case hearts = "♥️"
}

let cardSuitOptional: CardSuit? = CardSuit(rawValue: "♦️")
//print(cardSuitOptional?.rawValue)


enum TrainStatus {
	case onTime
	case delayed(minutes: Int)
}


let status = TrainStatus.delayed(minutes: 10)

//: [Next](@next)


