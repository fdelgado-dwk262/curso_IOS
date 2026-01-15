//Manejo de cadenas
// documentacion .- https://swift-book-es.vercel.app/guia-del-lenguaje/cadenas-y-caracteres
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

// Interpolacion <- de examen
// uso de una variable dentro de un string, pequeñas operaciones y/o ternarios

cadenaConVariables = """
Hola \(caracter1)
eres el numero: \(numeropruebas) y 
si sumamos 5 \(numeropruebas + 2) 
o un ternario : \(esAdulto ? "si 🥸" : "no 🫣")

Nota.-  se sacan desde Mac con la tecla fn
"""
print(cadenaConVariables)

let cadena02 = "1234567890qwerrewrq"

let cadena03 = "1234567890QWerrewrq"

cadena02[cadena02.startIndex]

print(cadena02 == cadena03.lowercased())

print(cadena02.uppercased() == cadena03)
// ---------------------------------------
// anexo Algebra de Bool
// operadoes lógicos

/*
AND (Y lógico): Solo es True si ambos operandos son True.
True AND True = True
True AND False = False
False AND True = False
False AND False = False

OR (O lógico): Es True si al menos un operando es True.
True OR True = True
True OR False = True
False OR True = True
False OR False = False

NOT (Negación): Invierte el valor.
NOT True = False
NOT False = True 
*/
var variableBool: Bool

// Y ( and ) &&

variableBool = true && true
print(variableBool)

print("----------------------------")

// O ( or ) ||

variableBool = true || false
print(variableBool)
