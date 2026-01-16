//Conjuntos --- SET

import Foundation

// almacena valores
// del mismo tipo y sin estar repetidos
// diferencias con un array .- array garantiza el orden y el set no

var conjuntoAnimales: Set<String> = ["Perro", "Gato", "Tortuga", "Perro", "araña"]

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

// -----------

// iteraciones

// si lo contiene - es como una busqueda
conjuntoAnimales.contains("Lobo") ? print("si hay") : print("no hay")

// recorrido ordenado los elementos
// nota en string .- ordena primero empezando por mayusculas y despues empiza por minusculas
for animal in conjuntoAnimales.sorted() {
    print(animal)
}

// Teoria de conjuntos
// revisar teoria en union , interseccion y diferencia


let setA: Set<Int> = [1, 2, 3]
let setB: Set<Int> = [3, 4, 5]
let unionSet = setA.union(setB) // [1, 2, 3, 4, 5]

let intersectionSet = setA.intersection(setB) // [3]

let subtractingSet = setA.subtracting(setB) // [1, 2]

let symmetricDiffSet = setA.symmetricDifference(setB) // [1, 2, 4, 5]

setA.isSubset(of: setB) // false
setB.isSuperset(of: setA) // false

setA.isDisjoint(with: setB) // false (tienen el 3)

// Notas .-
// Adición/Eliminación: Métodos como insert(), remove(), y operadores como += (unión) o -= (resta)
