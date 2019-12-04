//: [Previous](@previous)

import Foundation
import UIKit
import PlaygroundSupport

//: This tells the Playground that we'll be dealing with THREADING, so that the execution doesn't stop when it reaches the end of the playground
PlaygroundPage.current.needsIndefiniteExecution = true
print("Starting execution")

//: ### Basic background job
/*
DispatchQueue.global().async {
	// This will be executed in a background thread
	PlaygroundPage.current.finishExecution()
}
*/

/*
DispatchQueue.global().async {
	// This is a time consuming task that should be executed on a background queue to make your UI responsive
	var sumOfRandoms: Int32 = 0
	for _ in 0..<50000 {
		sumOfRandoms = sumOfRandoms &+ Int32(arc4random_uniform(10000000))
	}
	print("Finished with result \(sumOfRandoms)")
	PlaygroundPage.current.finishExecution()
}
*/

//: Sometimes you need to pass a value from the background Queue to the main Queue
//: WARNING: ONLY WORK WITH UIKIT APIS ON THE MAIN QUEUE
/*
let label = UILabel()
DispatchQueue.global().async {
	var sumOfRandoms: Int32 = 0
	for _ in 0..<10000 {
		sumOfRandoms = sumOfRandoms &+ Int32(arc4random_uniform(10000000))
	}
//	label.text = "\(sumOfRandoms)" -- NEVER to this on the background queue
	DispatchQueue.main.async {
		label.text = "\(sumOfRandoms)"
		print("Finished and set label to \(label.text ?? "")")
		PlaygroundPage.current.finishExecution()
	}
}
*/

//: [Next](@next)
