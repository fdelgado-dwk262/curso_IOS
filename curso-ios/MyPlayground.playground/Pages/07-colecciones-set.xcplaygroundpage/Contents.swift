//Conjuntos --- SET

import Foundation

// almacena valores
// del mismo tipo y sin estar repetidos
// diferencias con un array .- array garantiza el orden y el set no

var conjuntoAnimales: Set<String> = ["Perro", "Gato", "Tortuga", "Perro"]

print(conjuntoAnimales)


// cantidad de items

conjuntoAnimales.count
conjuntoAnimales.isEmpty

// diferencia

conjuntoAnimales.insert("Lobo")

// si se añada un duplicado no hace nada  no implica ponerlo al final y
// difderencoia entre mayusculas y minusculas

conjuntoAnimales.insert("Perro")
conjuntoAnimales.insert("perro")


print(conjuntoAnimales)
