import Foundation

enum Compass {
case north, south, west, east
    
    func printCompass(){
        switch self{
            case .east: print("Im Osten, geht die Sonne auf")
            case .south: print("Im Süden, nimmt sie ihren Lauf")
            case .west: print("Im Westen, will sie untergeh'n")
            case .north: print("Im Norden, ist sie nie zu sehen")
        }
    }
}
var osten = Compass.east
var sueden = Compass.south
var westen = Compass.west
var norden = Compass.north

osten.printCompass()
sueden.printCompass()



//Durch den default Wert wird immer "Du brauchst keinen Regenschirm!" angezeigt, es sei denn es regnet.

enum Weather {
case sun, rain, storm
    
    func printWeather(){
        switch self{
            case .rain: print("Man brauch wahrscheinlich einen Regenschirm")
            default: print("Du brauchst keinen Regenschirm!")
        }
    }
}

var sonne = Weather.sun
var regen = Weather.rain
var storm = Weather.storm

sonne.printWeather()
regen.printWeather()
storm.printWeather()


enum Orakel {
case positiv, neutral, negativ
}

let positivArray = ["Mit sicherheit", "Klar!!", "Bestimmt"]
let neutralArray = ["Vielleicht", "Kann sein", "Egal"]
let negativArray = ["Nein", "Niemals!!", "Kannst du vergessen"]

var situation  = Orakel.negativ


switch situation{
case .positiv: print(positivArray.randomElement()!)
case .neutral: print(neutralArray.randomElement()!)
case .negativ: print(negativArray.randomElement()!)
}

// Beispiel einer while-Schleife in Swift
//while(orakel == Orakel.positiv){
}
// Beispiel für ein Array mit von bis...
//var list = Array (1...49)

// Beispiel für eine while-Schleife
//while(true){
    //CODE
}




