//: [Previous](@previous)

import Foundation

/// This struct represents a playing Card
struct Card {

	/// This is a nested type. It represents a card's suit.
	enum Suit: Character {
		case clubs = "♣️"
		case diamonds = "♦️"
		case spades = "♠️"
		case hearts = "♥️"
	}

	/// This represents a card's rank. It's based on an integer
	enum Rank: Int {
		case two = 2, three, four, five, six, seven, eight, nine, ten
		case jack, queen, king, ace

		var description: String {
			switch self {
				case .two, .three, .four, .five, .six, .seven, .eight, .nine, .ten: return "\(rawValue)"
				case .jack: return "J"
				case .queen: return "Q"
				case .king: return "K"
				case .ace: return "A"
			}
		}
	}

	let rank: Rank
	let suit: Suit

	var description: String {
		return "\(rank.description)\(suit.rawValue)"
	}
}

//extension Card: CustomDebugStringConvertible {
//	var debugDescription: String { return description }
//}

let aceOfHearts = Card(rank: .ace, suit: .hearts)

print(aceOfHearts.description)
print(aceOfHearts)

print(Card(rank: .two, suit: .diamonds).description)



//: [Next](@next)
