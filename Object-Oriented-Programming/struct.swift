
import Foundation

// MARK: - STRUCT BASICS

// Structs are value types.
// They provide value semantics (independent values when copied).
// Memory location (stack or heap) is decided by Swift's compiler/runtime.

// MARK: - 1. Quiz Struct

struct Quiz {
    let title: String
    let datecreated: Date
    let ispermium: Bool?

    // Structs have an implicit memberwise initializer.
    // Here, we are creating our own custom initializer.
    // datecreated has a default value of .now.
    init(title: String, datecreated: Date = .now, ispermium: Bool?) {
        self.title = title
        self.datecreated = datecreated
        self.ispermium = ispermium
    }
}

let myobjext: String = "Hello"

// Creating an instance of Quiz
let myqQuiz = Quiz(title: "String", ispermium: nil)

print(myqQuiz.title)


// MARK: - 2. Immutable Struct

// Properties declared with let cannot be modified individually.
// However, a var instance can be replaced with a new struct value.

struct UserModel {
    let name: String
    let isperium: Bool
}

var User1: UserModel = UserModel(name: "John", isperium: false)

func markuserasPermium() {
    print(User1)

    // Creating a new struct value instead of modifying the old property.
    User1 = UserModel(name: User1.name, isperium: true)
}

markuserasPermium()


// MARK: - 3. Attempting to Mutate Struct Properties

// Properties declared with let cannot be changed.
// To modify properties individually, use var.

struct UserModel2 {
    var name: String
    var isPermium: Bool
}

var user2 = UserModel2(name: "John", isPermium: false)

func markuserasPermium2() {
    print(user2)

    // Directly updating a mutable property.
    user2.isPermium = false

    // Replacing the entire struct value.
    user2 = UserModel2(name: user2.name, isPermium: true)
}

markuserasPermium2()


// MARK: - 4. Returning a New Struct

// Instead of modifying the existing struct,
// this function returns a completely new struct value.

struct UserModel3 {
    let name: String
    let isperium: Bool

    func markuserasPermium(newValue: Bool) -> UserModel3 {
        return UserModel3(name: name, isperium: newValue)
    }
}

var user3: UserModel3 = UserModel3(name: "Aditya", isperium: false)

// Replacing the old value with the returned struct.
user3 = user3.markuserasPermium(newValue: true)

print(user3)


// MARK: - 5. Mutating Functions

// A mutating function allows a struct method to modify
// its own properties.
// The property must be declared using var.

struct UserModel4 {
    let name: String
    var isperium: Bool

    mutating func markuserasPermium(newValue: Bool) {
        isperium = true
    }

    mutating func updateisperimium(newValue: Bool) {
        isperium = newValue
    }
}

// Creating an instance
var user4 = UserModel4(name: "Aditya", isperium: false)

// Calling mutating functions
user4.markuserasPermium(newValue: true)
user4.updateisperimium(newValue: false)

print(user4)

struct user5{
    let name:String,
    let age:Int,
    let isnew:Bool
    // 
    // 
}