// colecciones con var o con let

import Foundation

// Arrays deben de ir tipados y ser por tipo cada contenido

var array: [Int] = [1, 2, 3, 4, 5]
var nombres: [String] = ["Ana", "Pedro", "María"]
var arrayVacio = [String]()

var arrayVacioNum = [Int]()

// array que no es una buena idea
var arrayVariados: [Any] = [1, "Ana", true, [1, 2, 3]]

nombres.append("Luis")
print(nombres)

arrayVacio.append("mundo")

print(arrayVacio)


var todosArrays = arrayVacio + nombres
print(todosArrays)

// numero de items del array
print(todosArrays.count)
// posicion concreta del array
print(todosArrays[2])
// cantidad o longitud del array
print(todosArrays.count)

// al usar un array y poner un . depues se habilita la infromación
// de las operaciones / funciones que podemos tener al respecto
print(todosArrays.isEmpty)
// o
print((todosArrays.count == 0 ? "esta vacio" : "esta lleno"))

print("-----------------------")

// Mas cosas sobre arrays
// Array de enteros
var numeros: [Int] = [1, 2, 3, 4, 5]

// Array de cadenas
var frutas: [String] = ["Manzana", "Banana", "Cereza"]

// Array vacío de doubles
var valores: [Double] = []


//Modificación de elementos
frutas[1] = "Mango"
print(frutas) // Output: ["Manzana", "Mango", "Cereza"]

// Agregar elementos
frutas.append("Naranja")
print(frutas) // Output: ["Manzana", "Mango", "Cereza", "Naranja"]

// Eliminar elementos
frutas.remove(at: 2)
print(frutas) // Output: ["Manzana", "Mango", "Naranja"]


print("-----------------------")

//Operaciones comunes con arrays

//Reversar un array:
let numerosInvertidos = numeros.reversed()

// se necesita convertir la salia a un array con la palabra reservada así nos dará un array invertido
print(Array(numerosInvertidos))
// Output: [5, 4, 3, 2, 1]

//Ordenar un array:
let frutasOrdenadas = frutas.sorted()
print(frutasOrdenadas)

//Buscar un elemento:
if frutas.contains("Mango") {
    print("El array contiene Mango")
}

print("-----------------------")
