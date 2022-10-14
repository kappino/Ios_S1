


import Foundation

//In C le funzioni che non ritornano nulla vengono chiamate procedure
//In Swift non facciamo distinzione, sono tutte funzioni

//Due punti e apici danno una label alle variabili passate ad una funzione
//makeBreakfast( food: "scrambled eggs", drink: "orange juice")

//Le funzioni vengono definite con func bisogna dichiarare il tipo che vogliamo ritornare
// usando l'operatore -> subito dopo l'argomento della funzione.
// Se omettiamo il tipo del return la funzione sarà di default una void

func multiply(firstNumber: Int , secondNumber: Int) -> Int {
    let result = firstNumber * secondNumber
    print("The result is \(result)")
    return result
}
multiply (firstNumber: 10, secondNumber: 5)

//Possiamo assegnare una label nella dichiarazione di una funzione cosi che quando effettueremo
//la chiamata alla funzione potremmo usare la label
func sayHello(to person: String, and anotherPerson: String) {
    print("\(person) messaggia con \(anotherPerson)")
}

sayHello(to: "Antonio", and: "Pippo")
  

//Con l'underscore _ usato come label possiamo evitare di dichiarare quale variabile vogliamo
// assegnare nella chiamata della funzione

func test(_ a: Int, _ test2:Int) {
    var y2 = a + 5
    print(y2)
}

//Chiamate alla Function test non usando underscore
// test (a:1 , test2: 5)
//Chiamata alla Function test usando underscore
test( 1 , 5)
