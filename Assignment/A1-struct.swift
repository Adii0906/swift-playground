import Foundation
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


