
struct User{
    var device: Phone
    let userId: Int
    var userName: String
    var userPassword: String
    var location: String
    let birthYear: Int
    var isloggedIn: Bool
}

public struct Phone{
    let brand: String
    let model: String
    let oS: String
    let multiSim: Bool
}

var userPhoneA = Phone(brand: "Apple", model: "iPhone 14 Pro", oS: "iOS", multiSim: false)
var userPhoneB = Phone(brand: "Samsung", model: "S22 Ultra", oS: "Android", multiSim: true)
var userPhoneC = Phone(brand: "XIAOMI", model: "MI 12S Ultra 5G", oS: "Android", multiSim: true)
var userPhoneD = Phone(brand: "Google", model: "Pixel 7 XL", oS: "Android", multiSim: true)

var userA = User(device: userPhoneA, userId: 2387654, userName: "Fradiano1994", userPassword: "fradianoSyntax", location: "Hameln", birthYear: 1994, isloggedIn: false)
var userB = User(device: userPhoneB, userId: 0966547, userName: "Nabil1991", userPassword: "nabilHamburg", location: "Hamburg", birthYear: 1991, isloggedIn: true)
var userC = User(device: userPhoneC, userId: 9554233, userName: "VirgilVanDijk", userPassword: "LiverpoolFc", location: "Liverpool", birthYear: 1991, isloggedIn: true)



var userD = userA
userD.userName = "Fradiano94"

print(userA)
print(userD)

userB.device = userPhoneD

print(userB.device)

func loggedIn(user: User){
    var currentUser = user
    if (currentUser.isloggedIn == true){
        print ("Der Benutzer",user.userName,"ist eingeloggt")
    }else{
        print("Der Benutzer",user.userName,"ist nicht eingeloggt")
    }
}

loggedIn(user: userB)
loggedIn(user: userA)

