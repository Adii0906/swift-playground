import Foundation

var username:String="Hello"
var userisperimum:Bool=true
var userisnew:Bool=true


func getusername()-> String{
    userisperimum
}


// limited to one 
func getuserinfo()->String{
    let name=getusername()
    let is_permium=userisperimum
    return name
}

// tuple can combine multiple piece of value
func getuserinfo() -> (name:String,isperimum:Bool) {
    let name=getusername()
    let is_permium=userisperimum
    return (name,is_permium)
}

var userdata1:String=username
var userdata:(String,Bool,Bool)=(username,userisperimum.userisnew)

let info1=getuserinfo() 

let namne1=info.0


func getusername3()-> (name:String,ispermium:Bool){
    return (usernamer,userispermium,userisnew)
}

func dosomethingwitheuser(info: (name:String,ispermium:Bool)){

}

let info=getuserinfo()
dosomethingwitheuser(info: (name: String, ispermium: Bool))