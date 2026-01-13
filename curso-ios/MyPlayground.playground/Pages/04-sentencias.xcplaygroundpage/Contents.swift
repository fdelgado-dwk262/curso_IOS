// Sentencias de control - Controles de flujo

import Foundation

var opcion01: Int
var opcion02: Int

opcion01 = 10
opcion02 = 20

// Condicionales

//if
print("If .-")
if( opcion01 >= opcion02) {
    print("\(opcion01) es menor")
} else {
    print("\(opcion02) es mayor")
}

// ternarias
print("Ternarias .- ")
(opcion01 >= opcion02) ? print("\(opcion01) es menor") : print("\(opcion02) es mayor")

// Bucles

// for
// indice es el contador que va desde en el caso siguietne de 1 a 5
// cumpliendose la sentencia del bucle "n" veces

for indice in 1...5 {
    print("Hola .- \(indice)")
}

// While

var counter = 1
var tope = 3

while counter <= tope {
    print("Counter is now \(counter)")
    counter += 1
    if (counter > tope) {
        print("salimos del bucle")
        break
    }
}
// Nota del while la suma del contador ira al principio o al final y depende si
// queremos hacer al menos una iteración

// Repeat

var i = 0
repeat {
    print("repetimos \(i)")
    i+=1
} while i < 5

//
