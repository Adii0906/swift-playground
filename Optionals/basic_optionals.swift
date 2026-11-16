import Foundation
//THERE IS ALWAYS VALUE 

let mybool:Bool?=false

let myotherbool:Bool?=nil
print(mybool)

// nil caolescing operations

let newvalue:Bool?=mybool
// the value of the optional;  if there is one otherwise none which is false
let newvalue2:Bool=myotherbool ?? false

print("New value 2:\(newvalue2)")

var mystring:String?=nil

print(mystring ?? "this is a value")

mystring=nil
mystring="nEW STRING"
print(mystring)

var userispermimum:Bool?=nil

func checkifuserpermium()->Bool?{
    return userispermimum
}

func checkifuserpermium2()->Bool?{
    return userispermimum ?? false
}

let isperimum=checkifuserpermium()
//IF LET
//WHEN ITS 
func checkifuserpermium3()->Bool?{
    if let newvalue=userispermimum{
        //HERE WE HAVBE ACCES TO NON OPTIONAL VALUE
        print(newvalue)
        return true
    }else{
        return false
    }
}

func checkifuserpermium4()->Bool?{
    if let userispermimum{
        //HERE WE HAVBE ACCES TO NON OPTIONAL VALUE
        print(userispermimum)
        return true
    }else{
        return false
    }
}
//GUARD WHEN A GUARD IS A FAILURE ENTER THE CLOSURE
//GUARD IS USED TO MAKE SURE THE THERE IS A VALUE IF THERE IS LET THE NEWVALUE EQUA; THAT VALUE
//ELSE OTHERSISE RETURN OUT OF THE FUNCTION
func checkuserperimum6()->Bool{
    guard let newvalue=userispermimum else{
        return false
    }
    return newvalue
}

var userisnew:Bool?=true
var userdidcompletedboarding:Bool?=false
var userfavouritemovie:String?=nil
func checkifuserissetup()->Bool{
    // return getuserstatus(userisnew: Bool, userdidcompleteboarding: Bool, userfavouritemovie: String)
    if let isnew=userisnew,let didcompleteonboarding=userdidcompletedboarding,let favmovie=userfavouritemovie{
        //USER IS NEW == BOOL and 
        return getuserstatus(userisnew: isnew, userdidcompleteboarding: didcompleteonboarding, userfavouritemovie: favmovie)
    }
    else{
        // USERIS NEW = NIL WRAP ALL NULL OR NIL 
        return false
    }
}
func getuserstatus(userisnew:Bool,userdidcompleteboarding:Bool,userfavouritemovie:String)->Bool{
    if userisnew && userdidcompleteboarding{
        return true
    }
    return false
}

func checkuserstatus2()->Bool{
    guard let userisnew, let userdidcompletedboarding, let userfavouritemovie else{
        return false
    }
    return true
}
// LAYERED GUARD
func layeredguard()->Bool{
    guard let userisnew  else{
        return false
    }
    guard let userdidcompleteboarding:Bool else{
        return false
    }
}