// Sentencias de control

import Foundation

var opcion01: Int
var opcion02: Int

opcion01 = 10
opcion02 = 20

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
