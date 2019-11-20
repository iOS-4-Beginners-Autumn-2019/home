import UIKit

class ButtonCounterViewController: UIViewController, UIGestureRecognizerDelegate {

	@IBOutlet weak var mainLabel: UILabel!
	let counter: Counter = CounterImpl(value: 0)

	override func viewDidLoad() {
		super.viewDidLoad()
		let tripleTap = UITapGestureRecognizer(target: self, action: #selector(randomizeCounter(_:)))
		tripleTap.numberOfTapsRequired = 3
		mainLabel.addGestureRecognizer(tripleTap)
	}

	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		refreshText()
	}

	@IBAction func plusButtonPressed(_ sender: UIButton) {
		counter.increment()
		refreshText()
	}

	@IBAction func minusButtonPressed(_ sender: UIButton) {
		counter.decrement()
		refreshText()
	}

	@objc func randomizeCounter(_ sender: UITapGestureRecognizer) {
		counter.randomize()
		refreshText()
	}

	private func refreshText() {
		mainLabel.text = "\(counter.value)"
		mainLabel.sizeToFit()
	}
}
