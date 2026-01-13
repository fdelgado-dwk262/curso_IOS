//Manejo de cadenas

import Foundation

var miString = "hola"
print(miString + " mundo")

let multilinea = """
Texto en multi

linea

de 
pruebas
"""

print(multilinea)

var cadenaConEscapes = "Hola que tal\n¿Cómo estás?\n¡Qué bueno!\n entre \"comillados\" doble (se escapa la doble comilla) "
print(cadenaConEscapes)


var cadenaVacia = ""

print (cadenaVacia == "" ? "cadena vacia" : "llena")

print (cadenaVacia.isEmpty ? "cadena vacia" : "llena")

var cadenaMutable = "hola"
// concatenacion
cadenaMutable = cadenaMutable + " y adiós"
print(cadenaMutable)

let caracter1 : Character = "A"
// nos da el tipo de la variable
type(of: caracter1)

var cadenaConVariables: String
var numeropruebas = 5
let esAdulto = true

// Interpolacion
// uso de una variable dentro de un string, pequeñas operaciones y/o ternarios

cadenaConVariables = """
Hola \(caracter1)
eres el numero: \(numeropruebas) y 
si sumamos 5 \(numeropruebas + 2) 
o un ternario : \(esAdulto ? "si 🥸" : "no 🫣")
"""
print(cadenaConVariables)

let cadena02 = "1234567890qwerrewrq"

let cadena03 = "1234567890QWerrewrq"

cadena02[cadena02.startIndex]

print(cadena02 == cadena03.lowercased())

print(cadena02.uppercased() == cadena03)

