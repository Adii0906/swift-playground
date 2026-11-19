
import Foundation

let userbepremium: Bool = true
let userisnew: Bool? = true
let status: Bool? = true

func getusername() -> String {
    let firstname: String = "Hello Swift"
    return firstname
}

func getpermium() -> String {
    if status == true {
        return "User is new"
    } else {
        return "User needs to buy premium"
    }
}

func userinfo(firstname: String) -> String {
    if firstname.starts(with: "Hello Swift") {
        return "First name is configured"
    }

    return "Not configured"
}

class GetUserFunction {
    var lettrue: Bool? = true
}

// Function calls
print(getusername())
print(getpermium())
print(userinfo(firstname: "Hello Swift"))

let user = GetUserFunction()
print(user.lettrue as Any)



func getUserinfo(){
    let username: String = "Aditya"
    let age: Int = 20
    let isStudent: Bool = true
}
getUserinfo()

let isPerimum:Bool?=nil

func checkPremium(){
    if isPerimum==true{
        return true
    }
    return false

}
checkPremium()

func validateUsername(username: String) -> String{
    let username:String?=nil
    if username?.starts(with: "@"){
        return "Valid username"
    }
    return false
}
validateUsername(username: String)
