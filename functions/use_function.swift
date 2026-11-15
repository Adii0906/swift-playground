//FUNCTION WILL CALL BUNCH OF CODE 
//A FUNCTION IS A BLOCK OF CODE THAT PERFORMS A SPECIFIC TASK. IT CAN BE CALLED MULTIPLE TIMES IN A PROGRAM TO EXECUTE THE SAME SET OF INSTRUCTIONS

import Foundation

func myfirstfuncction() {
    print("my first funcation is called")
    secondfunction() //CALLING THE FUNCTION
}

func secondfunction() {
    print("my second function is called")
}

func mythirdfunction() {
    print("my third function is called")

}

myfirstfuncction() //CALLING THE FUNCTION
// secondfunction() //CALLING THE FUNCTION

// lets go with complex function 

func getusername() -> String {
    let username: String = "John Doe"
    // print("The username is \(username)")
    return username
}

func checksubscription() -> Bool {
    let isSubscribed: Bool = true
    return isSubscribed
}


let user=getusername() //CALLING THE USERNAME FUNCTION

func showfirstscreen() -> Bool {
    var userdidcompletedonboarding: Bool = false
    var userprofilecompleted: Bool = true
    let status = checkuserstatus(didcompleteboarding: userdidcompletedonboarding, profileiscreate: userprofilecompleted)

    if status == true{
        print("SHOW ONBOARDING SCREEN")
    }
    else{
        print("SHOW PROFILE SCREEN")
    }
}

func checkuserstatus(didcompleteboarding:Bool,profileiscreate:Bool) -> Bool {
    if didcompleteboarding && profileiscreate {
        return true
    } else {
        return false
    }
}

// -----------------------------------------------------
// some example for function 

func dosomething() -> String {
    print("EXECUTING THE FUNCTION")
    var isnew:Bool = true
    if isnew {
        print("USER IS NEW")
    } else {
        print("NOT NEW")
    }
    return "Function executed"
}

func marvel(marvel:String) -> String {
    var title:String = "SPIDERMAN"
    if title == "SPIDERMAN" {
        print("MARVEL MOVIE")
    } else {
        return "NOT MARVEL MOVIE"
    }

    //guard statement is used to check the condition if the condition is false then it will return the value and exit the function
    guard title == "SPIDERMAN" else {
        return false
    }
    return true
}


let number1=5
let number2:Int=2
func calculate()->Int{
    return number1+number2
}
calculate()

func calculate_number(value1:Int,value2:Int)->Int{
    return value1+value2
}
calculate_number()     //Completed basic of Function learning