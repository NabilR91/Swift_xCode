import Foundation

public class Person{
    var firstName: String
    var surName: String
    var age: Int
    
    init(firstName: String, sureName:String, age: Int){
        self.firstName = firstName
        self.surName = sureName
        self.age = age
    }
    
        
        func hasBirthday(){
            self.age += 1
            print(age)
        }
        
        func discriptoion(){
        print(firstName, surName, age)
        }
    
    
}

var nabil = Person(firstName: "Nabil", sureName: "Reimer", age:31)
var emily = Person(firstName: "emily", sureName: "Sali", age: 26)
var fradiano = Person(firstName: "Fradiano", sureName: "Hasani", age: 28)
var merlin = Person(firstName: "Merlin", sureName: "Möller", age: 23)

emily.hasBirthday()
emily.discriptoion()
nabil.discriptoion()

class BankAccount{
    let accountHolder: Person
    let accountNumber: Int
    let bankCode: Int
    var balance: Double = 0.00
    var limit: Double = 2000
    
    
    init(accountHolder:Person, accountNumber:Int, bankCode:Int){
        self.accountHolder = accountHolder
        self.accountNumber = accountNumber
        self.bankCode = bankCode
        self.balance = 0
        
        if(accountHolder.age<18){
            self.limit = 0
        }else{
            self.limit = 2000
        }
    }
    
    
    func payIn(betrag:Double){
        self.balance += betrag
    }
    
    func payOut(betrag:Double){
        var prediction = balance - betrag
        if(prediction > -limit){
            self.balance -= betrag
        }
    }
    func bankTransfer(betrag:Double, empfaenger: BankAccount){
        self.payOut(betrag: betrag)
        var prediction = balance - betrag
        if(prediction > -limit){
            empfaenger.payIn(betrag: betrag)
        }
    }
}


var kontoFradiano = BankAccount(accountHolder: fradiano, accountNumber: 43343, bankCode: 1991043777)
var kontoNabil = BankAccount(accountHolder: nabil, accountNumber: 43434343, bankCode: 2900500777)
var kontoMerlin = BankAccount(accountHolder: merlin, accountNumber: 424242, bankCode: 242424)
print(kontoFradiano.balance)

kontoFradiano.payIn(betrag: 777777777)
kontoNabil.payIn(betrag: 300000000)
kontoMerlin.payIn(betrag: 100000)
print(kontoFradiano.balance,"$")
print(kontoNabil.balance,"$")
print(kontoMerlin.balance,"$")

kontoFradiano.bankTransfer(betrag: 777777777, empfaenger: kontoNabil)
print("Fradiano hat noch", kontoFradiano.balance,"$")
print("Nabil hat noch", kontoNabil.balance,"$")

