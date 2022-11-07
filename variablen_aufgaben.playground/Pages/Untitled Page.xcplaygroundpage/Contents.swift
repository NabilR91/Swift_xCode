import UIKit
//  Variablen
var userName: String = "Nabil"
var userAge: Int = 31
let birthYear: Int = 1991
let userSize: Double = 1.84
let children: Bool = true

userAge  = 32

print("Name:",userName)
print("Alter:",userAge)
print("Geburtsjahr:",birthYear)
print("Größe:",userSize)
print("Kinder:",children)

var lightIsOn: Bool = true

if lightIsOn == true{
    print("Light is on")
}



let urlaubsTage = 24
var genUrlaubsTage = 10
var restUrlaub: Int{
    get{ urlaubsTage - genUrlaubsTage}
    set{genUrlaubsTage += newValue }
}
genUrlaubsTage += 8
print(restUrlaub)
print(urlaubsTage)
print(genUrlaubsTage)



// Arays
 
var alphabetAtoL: Array = ["A", "B","C","D","E","F","G","H","I","J"]
alphabetAtoL.append("K")
//alphabetAtoL.removeLast()
//alphabetAtoL.removeFirst()
//alphabetAtoL.remove(at: 5)
alphabetAtoL.append("L")

let alphabetMtoU: Array = ["M","N","O","P", "Q", "R", "S", "T", "U"]

alphabetAtoL.append(contentsOf: alphabetMtoU)
//alphabetAtoL.shuffle()
//alphabetAtoL.reverse()

print(alphabetAtoL)


// Klassen in swift




