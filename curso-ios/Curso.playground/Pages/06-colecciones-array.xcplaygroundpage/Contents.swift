// Colecciones

import Foundation


// Array
// lista ordenada de valores del mismo tipo de datos
// ejemplo .- nombreArray[1,3,4,6,8,9]

// operaciones con arrays

// array vacio

var arrayVacio: [Int] = []
print(arrayVacio)

// array inicializado

var arrayInt: [Int] = [1,2,3,4,5]
print(arrayInt)

// sabe item del array
print("Elementos del array  \(arrayInt.count)")
// eta vacio ?
print("esta vacio array  \(arrayInt.isEmpty)")

// añadir item al array al final
arrayInt.append(6)
print("Añadido al array  \(arrayInt)")

// otra forma de añadirlo uno o varios
arrayInt+=[7,8,9]
print("Añadido al array +=[] \(arrayInt)")

// añadir un elemento en una poosicion concreta desplezando y no reemplazando
arrayInt.insert(100, at:2)
print("Añadido 100 al array en la posicion 2 \(arrayInt)")

// borrar un elemento de una posicion espefifica desplazando el resto
arrayInt.remove(at: 2)
print("Borrado de  100 al array en la posicion 2 \(arrayInt)")

// eliminar el último o el primer
arrayInt.removeLast()
print("Borrado de la útima posicion \(arrayInt)")
arrayInt.removeFirst()
print("Borrado de la primera posicion \(arrayInt)")

// acceder a una posicion concreta del array
var posicionArray = arrayInt[2]
print("posicion 2 de ejemplo del array solo un dato \(posicionArray)")

// Iterar sobre un array  ( recorrerlo )
// tener en cuneta que indice parte de 0
for elemento in arrayInt {
    print(elemento)
}

// iteración sobre indice y valor
for (indice, elemento) in arrayInt.enumerated() {
    print("\(indice) : \(elemento)")
}


// nota para no salirnos del array hay que tener el .count para saber la cantidad de itmes
// del array saber que los array parten de la posicion 0 y siempre el count si lo usamso
// hay que restar 1 a la posicion ya que por ejemplo
// si el array tiene 4 items las posiciones iran de 0 a 3 8 total 4 items
// para posicionarnos en la última posicion no coincide con 4 siucno con 4-1 .- 3 es la última posicion
