// A simple subscription example for learning Swift conditionals.
import Foundation

let greeting = "Hey there! Welcome to the Sample App"
let userName = "John Doe"
let price: Double = 9.99

var hasActiveSubscription = true
var hasCancelledSubscription = false

print(greeting)
print("User: \(userName)")
print("Plan price: \(price)")

if hasActiveSubscription && !hasCancelledSubscription {
    print("User is subscribed. You can use the premium mode.")
} else {
    print("User is not subscribed. Please pay the bill to use the premium mode.")
}

let userCancelledSubscription = true

if userCancelledSubscription {
    print("User cancelled the subscription plan.")
}


