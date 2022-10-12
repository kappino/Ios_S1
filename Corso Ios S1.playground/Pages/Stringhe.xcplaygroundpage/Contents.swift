import UIKit
let greeting = "Hello"
var otherGreeting = "Salutations"

//Stringa multiriga con il triplo apice """, rispetta anche i da capo
let joke = """
Q: Why did the chicken cross the road?
A: To get to other side!
"""
print(joke)

//Swift utilizza UTF-16 al posto della codifica ASCII è possibile rappresentare emoji e caratteri speciali


//Operazioni con le stringe
var myString: String = ""
if myString.isEmpty {
    myString = "Stringa Vuota"
}

let string1 = "Hello"
let string2 = ", world!"

myString = string1 + string2
myString += " Hello!"

let age = 30

//Interpolazione utilizzando backslash per inserire una variabile in un print
print("Paolo la tua età è \(age)")

//Possiamo confrontare stringhe ignorando maiuscole o minuscole convertendo tutta la stringa
myString = "Johnny Appleseed"

if myString.lowercased() == "joHnny aPPleseeD".lowercased() {
    print("I due nomi sono uguali")
}





