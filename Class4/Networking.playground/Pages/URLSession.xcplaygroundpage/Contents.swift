//: [Previous](@previous)

import Foundation
import UIKit
import PlaygroundSupport

//: # URLSession

PlaygroundPage.current.needsIndefiniteExecution = true
let endpoint = "https://switter.app.daftmobile.com/api/hello"

/*:
##	Task 2:

### Download a string from the Switter API using the `hello` endpoint

1. Create a URL

2. Create a URL Session (or use the shared one)

3. Create a data task using `func dataTask(with: URL, completionHandler: (Data?, URLRespone?, Error?) -> Void)`!

4. Check for errors inside `completionHandler`

5. Create a String from the response using `init?(data: Data, encoding: String.Encoding)` (use `.utf8` string encoding)

6. Finally, print the String!
*/

