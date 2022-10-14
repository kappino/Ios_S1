//: [Previous](@previous)

import Foundation

//Nome della struct con lettera maiuscola
//Possiamo inizializzare le variabili con un parametro di default tramite il metodo .init
struct Person {
    var name: String
    
    func sayHello() {
        print("Hello there! My name is \(name)!")
    }
}

//Possiamo inizializzare una variabile del tipo struttura

let person = Person(name: "Pippo")

//Per richiamare una variabile della struttura appena creata mettiamo nomestruttura.nomevariabile
print(person.name)

//Uguale per richiamare le funzioni

print (person.sayHello())

struct Temperature {
    
    var celsius: Double
    var kelvin: Double
    
    // RIPROVARE
    
    var fahrenheit: Double {
        celsius * 1.8 + 32
    }
    
    
    //Con self distinguiamo tra il parametro della struct e il parametro del metodo
    //per non creare ambiguità
    init (celsius: Double ) {
        self.celsius = celsius
        kelvin = celsius +  273
    }
    
    init (fahrenheit: Double) {
        celsius = (fahrenheit - 32) / 1.8
        kelvin = celsius + 273
    }
    
    init (kelvin: Double) {
        self.kelvin = kelvin
        celsius = (kelvin - 273)
    }
    
    mutating func increment (byC celsius: Double) {
        kelvin += (celsius + 237)
        self.celsius += celsius
    
    }
    mutating func increment (byK kelvin: Double) {
        celsius += (kelvin - 237)
        self.kelvin += kelvin
    }
    
    
}

var temp2 = Temperature( kelvin: 237)
var temp = Temperature ( celsius: 20)

print("Gradi Centigradi: ",temp.celsius)
print("Gradi Kelvin: ",temp.kelvin)
print("Gradi Fahrenheit: ",temp.fahrenheit)
temp.increment(byC: 30)


print("Gradi Centigradi: ",temp.celsius)
print("Gradi Kelvin: ",temp.kelvin)
print("Gradi Fahrenheit: ",temp.fahrenheit)


//Property Observers



//: [Next](@next)

