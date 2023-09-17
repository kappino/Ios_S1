import UIKit

var greeting = "Hello, playground"
print("Hello, playground")
print(greeting)
print("Ciao")
//Il comando let ci permette di dichiarare una variabile come costante
//Per dichiarare il tipo di una variabile doppiamo mettere : subito dopo il nome
let nome:String = "Paolo"
//Non posso modificare una costante
//name = "James" non funzionerà!

//Su una variabile posso fare tutte le operazioni ecc
var age = 3
print(age)
age = age + 1
age += 5
print(age)

//Camel Notation dichiarare variabili senza spazi con prima lettera minuscola e seconda maiuscola
var firstName:String

//Le struct sono simili ad una classe ma meno potenti, però molto più veloci
struct Person {
    let name: String = "pippo"
    
    let cognome: String = "esposito"
    
    func Stampa(name:String,cognome:String) -> Void {
        print(name,cognome)
    }
}
//Non possiamo effettuare operazioni tra variabili con tipi diversi però possiamo effettuare il cast
let x = 3                   //Intero
let y = 0.14                //Double
let z = Double(x) + y       //Rendiamo l'intero un double solo nell'ambito dell'operazione, non
                            //modifichiamo il tipo della variabile iniziale

//Per l'if la condizione non deve essere contenuta tra parentesi tonde mentre le graffe sono obbligatorie
if age <= 50 {
    print ("Sei Giovane 😇")
}

//Possiamo creare un booleano inizializzando una variabile data da un confronto e
//utilizzarla in un if per renderlo più leggibile
let isYounger = age < 13

if !isYounger {
    print("Non è più giovane di 13 anni")
} else {
    print("E' più giovane di 13 anni")
}

//Quando abbiamo una serie di casi possibili possiamo ussare lo statement switch,
//a differenza di c++ non dobbiamo usare il break alla fine di ogni case
let numberOfWheels = 2
switch numberOfWheels {
case 0:
    print("Missing sometingh?")
case 1:
    print("Unicycle")
case 2:
    print("Bicylce")
case 3:
    print("Tricycle")
case 4:
    print("Quadcycle")
default:
    print("That's a lot of wheels!")
}


//Possiamo mettere varie condizioni una dopo l'altra per comprenderle tutte in quel determinato case

let character = "Z"

switch character {
    
case "a","e","i","o","u" :
    print("E' una vocale")
default:
    print("Non è una vocale")
}

//Gli intervalli vengono identificati con i 3 punti ...
//Con int.min
let temperature = 63
switch temperature {
case Int.min...64:
    print("It's to cold")
case 65...75:
    print("The temperature is just right")
default:
    print("It's too hot")
}
//Moltiplicate per due il valore massimo utilizzando l'operatore ternario ?
//variable = condition ? trueValue : falseValue
let a=15
let b=4
var largest:Int = (a > b ? a : b) * 2
print(largest)
