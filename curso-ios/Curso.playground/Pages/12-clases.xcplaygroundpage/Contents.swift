// Clases

import Foundation

// Las Clases
/*
 
 Una clase es una plantilla para crear objetos (instancias) con propiedades (datos) y métodos (funciones), definida con la palabra clave class, permitiendo herencia y siendo un tipo de referencia (comparten memoria), a diferencia de las struct (tipos de valor). Las clases son fundamentales para la programación orientada a objetos en Apple, permitiendo modelar conceptos complejos, con la necesidad de crear un inicializador (init) personalizado y la posibilidad de heredar de otras clases.
 
 La idea es la reutilización de propiedades , métodos  de otras estructuas

 Fundamento de POO
 
 */

class Persona {
    var nombre: String
    var edad: Int
    
    init(nombre: String, edad: Int) {
        self.nombre = nombre
        self.edad = edad
    }
}
