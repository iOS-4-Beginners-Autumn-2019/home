//: [Previous](@previous)

import Foundation

enum VendingMachineError: Error {
	case invalidSelection
	case insufficientFunds(coinsNeeded: Int)
	case outOfStock
}

struct Item {
	var price: Int
	var count: Int
}

extension Item: CustomDebugStringConvertible {
	var debugDescription: String { return "ITEM[\(count)]: \(price)" }
}

class VendingMachine {
	private var inventory = [
		"Candy Bar": Item(price: 12, count: 7),
		"Chips": Item(price: 10, count: 4),
		"Pretzels": Item(price: 7, count: 11)
	]
	private(set)var coinsDeposited = 0

	func deposit(coins: Int = 1) {
		coinsDeposited += coins
	}

	func vend(itemNamed name: String) throws -> Item {
		guard let item = inventory[name] else {
			throw VendingMachineError.invalidSelection
		}

		guard item.count > 0 else {
			throw VendingMachineError.outOfStock
		}

		guard item.price <= coinsDeposited else {
			throw VendingMachineError.insufficientFunds(coinsNeeded: item.price - coinsDeposited)
		}

		coinsDeposited -= item.price

		var newItem = item
		newItem.count -= 1
		inventory[name] = newItem

		return Item(price: item.price, count: 1)
	}
}

let vendingMachine = VendingMachine()
//TODO: Deposit some coins

do {
	// TODO: Try vending here
} catch {
	// TODO: Handle errors here
}

//TODO: Try using the `try?` and `try!` operators and see what comes back

//: [Next](@next)
