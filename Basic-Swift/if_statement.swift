import Foundation
var like_count:Double = 10.0
var commentcount:Double = 5.0
var viewcount:Double = 100.0

//Addition
like_count = 5 + 1
like_count = like_count - 1

// or better version
like_count += 1

//Subsription
likecout = like_count - 1


likecouunt -= 1

likecount *= 2 // Mul take pirority against the add and sub

if like_count > 10 {
    print("You have more than 10 likes")
} else {
    print("You have less than 10 likes")
}

if like_count!=5{
    print("you does not have 5 likes")
}
else{
    print("you have 5 likes")
}

if like_count<5{
    print("you have less than 5 likes")
}
else{
    print("you have more than 5 likes")
}

var user_subscription:Bool = true //LET IS THE CONSTANT VAR IT NEVER CHANGE
var newuser_subscription:Bool = false

if user_subscription || newuser_subscription{
    print("User is subscribed now u can use the premium mode ")
} else if !user_subscription && !newuser_subscription{
    print("User is not subscribed, please first pay the bill to use the premium mode")
}
else{
    print("User is not subscribed, please first pay the bill to use the premium mode")
}




