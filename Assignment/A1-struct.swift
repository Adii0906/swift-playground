import Foundation
// 1. Student Struct — Basics Easy
struct Student {
    let name: String
    var age: Int
    let course: String
    var isEnrolled: Bool

    // Custom initializer
    init(name: String, age: Int, course: String, isEnrolled: Bool) {
        self.name = name
        self.age = age
        self.course = course
        self.isEnrolled = isEnrolled
    }
}

// Creating two student instances
var student1 = Student(name: "John", age: 12, course: "CSE", isEnrolled: true)
var student2 = Student(name: "Adii", age: 21, course: "AI/DS", isEnrolled: true)
// Printing student details

print(student1.name, student1.course)
print(student2.name, student2.course)
// Updating enrollment status

student2.isEnrolled = false
print(student2)





import Foundation

// MARK: - 2. Product Struct

struct Product {
    let name: String
    var price: Double
    var isAvailable: Bool

    init(name: String, price: Double, isAvailable: Bool) {
        self.name = name
        self.price = price
        self.isAvailable = isAvailable
    }
}

// 1. Create a product using let
let product1 = Product(name: "Laptop", price: 12.211, isAvailable: true)

// 2. Try changing its price
// product1.price = 200.00
// ERROR: product1 is declared using let.

// 4. Create another product using var
var product2 = Product(name: "Phone", price: 500.00, isAvailable: true)

// 5. Change its price and availability
product2.price = 901.11
product2.isAvailable = false

print(product1)
print(product2)


// MARK: - 3. Bank Account

struct BankAccount {
    let accountHolder: String
    var balance: Double

    init(accountHolder: String, balance: Double) {
        self.accountHolder = accountHolder
        self.balance = balance
    }

    // Deposit money
    mutating func deposit(amount: Double) {
        balance += amount
        print("Deposited: \(amount)")
        print("Balance: \(balance)")
    }

    // Withdraw money
    mutating func withdraw(amount: Double) {
        if amount > balance {
            print("Insufficient Balance!")
        } else {
            balance -= amount
            print("Withdrawn: \(amount)")
        }

        print("Balance: \(balance)")
    }
}

var account = BankAccount(accountHolder: "Aditya", balance: 1000.0)

print("Initial Balance: \(account.balance)")

account.deposit(amount: 500.0)
account.withdraw(amount: 300.0)
account.withdraw(amount: 5000.0)


// MARK: - 4. User Profile

struct UserProfile {
    let username: String
    let email: String
    let isPremium: Bool

    init(username: String, email: String, isPremium: Bool) {
        self.username = username
        self.email = email
        self.isPremium = isPremium
    }

    // Return a new UserProfile
    func upgradeToPremium() -> UserProfile {
        return UserProfile(
            username: username,
            email: email,
            isPremium: true
        )
    }
}

// Original profile
let originalUser = UserProfile(
    username: "Elliot",
    email: "newacc@123",
    isPremium: false
)

// Updated profile
let upgradedUser = originalUser.upgradeToPremium()

print(originalUser)
print(upgradedUser)


// MARK: - 5. Shopping Cart

struct ShoppingCart {
    var items: [String]
    var totalPrice: Double

    init(items: [String] = [], totalPrice: Double = 0.0) {
        self.items = items
        self.totalPrice = totalPrice
    }

    // Add an item
    mutating func addItem(name: String, price: Double) {
        items.append(name)
        totalPrice += price

        print("Added: \(name)")
    }

    // Remove an item
    mutating func removeItem(name: String, price: Double) {
        if let index = items.firstIndex(of: name) {
            items.remove(at: index)
            totalPrice -= price

            print("Removed: \(name)")
        } else {
            print("Item does not exist!")
        }
    }

    // Display cart
    func displayCart() {
        print("Items: \(items)")
        print("Total Price: \(totalPrice)")
    }
}

var cart = ShoppingCart()

cart.addItem(name: "Keyboard", price: 2000.0)
cart.addItem(name: "Mouse", price: 500.0)
cart.addItem(name: "Monitor", price: 6000.0)

cart.displayCart()

cart.removeItem(name: "Mouse", price: 500.0)

cart.displayCart()
