import Foundation

var greeting    = "Hello, Swift!" //VAR IS USED TO CHANGE THE VALUE OF THE VARIABLE

let user_subscription:Bool = true //LET IS THE CONSTANT VAR IT NEVER CHANGE 

var num:Int = 10

print(greeting)

if usr_subscription==true {
    print("User is subscribed now u can use the premium mode ")
} else {
    print("User is not subscribed, please first pay the bill to use the premium mode")
}

if user_subscription==false{
    print("User is not subscribed, please first pay the bill to use the premium mode")
} else {
    print("User is subscribed now u can use the premium mode ")
}

if !user_subscription{
    print("User is not subscribed, please first pay the bill to use the premium mode")
} else {
    print("User is subscribed now u can use the premium mode ")
}