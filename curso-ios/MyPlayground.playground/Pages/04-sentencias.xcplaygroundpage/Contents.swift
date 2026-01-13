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

// Ejemplo
let nifrioniCalor = 0
let haceFresco = 10
let templado = 20
let calor = 30
let measo = 40

var temperatura = -3

for temperatura in -5...45 {
   print("La temperatura de la calle es \(temperatura)")
    if ( temperatura <= nifrioniCalor) {
        print("🥶hace mucho frio")
    } else if ( temperatura <= haceFresco && temperatura > nifrioniCalor) {
        print("🧣hace frio")
    } else if ( temperatura <= templado && temperatura > haceFresco) {
        print("🧤hace templado")
    } else if ( temperatura <= calor && temperatura > templado) {
        print("🥵hace calor")
    } else {
        print("🔥nos asamos de calor")
    }
}

// nota .- podríamos hacer un jercicio con tuplas

// --------------------------

// Asignacion con Expresiones condicionales

let consejo: String

consejo = if temperatura <= nifrioniCalor {
    "abrigate mucho"
} else if temperatura > nifrioniCalor {
    "revisa tu armario"
} else {
    "prueba otra ropa"
}

print(consejo)


// Switch .- varias comparativas sin necesidad de if - ele if anidado
let valor = 6
switch valor {
    case 5:
        print("vale 5")
    case 3:
        print("vale 3")
    // caso con un rango como ejemplo y con una ternaria dentro
    case 6...10:
        valor > 8 ? print("por encima de 8"):print("por debajo de 8")
        print("en rango de 6 a 10")
    default:
        print("otro valor")
}
// en switch control de flujo con "continue" o "break" revisar documentacion

