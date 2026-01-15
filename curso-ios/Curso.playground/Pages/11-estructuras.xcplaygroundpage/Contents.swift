// Estructuras
import Foundation

// Las estructuras son Modelos de datos
// para no repetir la variables por cada uso
// usamos entidades basandonos en la estructura base o plantilla o modelo de datos

// no puede heredar

/*
ejemplo una estructura de persona
 
 nombre
 edad
 ...
 
 */

struct Persona {
    var nombre: String
    var edad: Int
    var apellidos: String
}

var persona01 : Persona

persona01 = Persona(nombre: "Fernando", edad: 50, apellidos: "Delgado ")

print(persona01)
print(persona01.nombre)
print(persona01.self)

// modificar datos

persona01.edad = 52
print(persona01.edad)

// Estructuras Nested ( estructuras con estructuras anidadas )

// estructura interna o nodo de otra
struct Direccion {
    var calle: String
    var numero: Int
    var cp : String
}

// estructura principal
struct DatosPersponales {
    var nombre: String
    var edad: Int
    var direccion: Direccion
}

var direccion01 = Direccion(calle: "Calle Falsa", numero: 123, cp: "00000")
var persona02 = DatosPersponales(nombre: "Fernando", edad: 50, direccion: direccion01)


// el acceso por nodos
print(persona02.direccion.calle)
// mopdificacion por nodos
persona02.direccion.calle = "Nueva calle"


// diferencia Importante

// en las estructuras al igualar una variable a una esdtructura y una segunda variable la iagualamos a la anterior
// estamos reservando dos espacios independientes es un clonado similar a "deep copy"
// estructura -> variabls 1 con tados 01 , variable 2 = variable 1
// obtenempos dos variables con datos independientes pese a que tengan el mismo contenido
// si camnbiamos el contendio de 1 y el de 2 ambos tienen sus contenidos


// las clases son por referencia es decir que dos variables comparten el mismo espacio de memoria
// de tal froma que que si modificamos la variable 1 o la 2 afecta al mismo espacio de datos y lo machaca

// en las estructuras son referencias al msimo contenid
// si una variabl 1 esta asociada a una estructura A y en la variable ponemos unso datos
// si la variabl 2 es igualada a la 1 las dos mantienen los mismos datos
// es una instancia

// Ejemplo de estructura con datos diferntes

var direccionA = Direccion(calle: "calleA", numero: 23, cp: "34562")
var personaA = DatosPersponales(nombre: "personA", edad: 23, direccion: direccionA)


var direccionB = Direccion(calle: "calleB", numero: 23, cp: "34562")
var personaB = DatosPersponales(nombre: "personB", edad: 23, direccion: direccionB)

print(personaA.nombre)
print(personaB.nombre)

// comparar las estructuras
// pendiente ( faltan tema de protocolos )
