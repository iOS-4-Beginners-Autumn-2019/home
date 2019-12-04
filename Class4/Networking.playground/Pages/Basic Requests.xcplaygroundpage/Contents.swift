//: Playground - noun: a place where people can play

import UIKit
import Foundation
import PlaygroundSupport

//: # Basic network request

PlaygroundPage.current.needsIndefiniteExecution = true

let urlString = "https://user-images.githubusercontent.com/1230922/70150627-951a4680-16aa-11ea-9eb7-ecc321f242d2.png"

/*:
##	Task 1:

### Download this image and display a UIImage object in the simplest possible way

1. Create a URL

2. Use the `Data(contentsOf: URL) throws` initializer - remember to use a background Queue!!!!

3. Use the `UIImage(data: Data)` initializer
*/
