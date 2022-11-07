import Foundation

class Person{
    var firstName: String
    var surName: String
    var age: Int
    
    init(firstName: String, surName: String, age: Int) {
        self.firstName = firstName
        self.surName = surName
        self.age = age
        
        func hasBirthday(){
            self.age += 1
        }
        func description(){
            print(self)
        }
    }
}

var fradiano = Person(firstName: "Fradiano", surName: "Hasani", age: 28)
var emily = Person(firstName: "Emily", surName: "Sali", age: 26)

emily.hasB
