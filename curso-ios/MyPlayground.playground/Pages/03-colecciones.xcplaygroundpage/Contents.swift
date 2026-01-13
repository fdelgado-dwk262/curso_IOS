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

// nunmeor de items del array
print(todosArrays.count)
// posicion concreta del array
print(todosArrays[2])
