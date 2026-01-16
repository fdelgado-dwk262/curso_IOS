// Clases

import Foundation

// Las Clases
/*
 
 Una clase es una plantilla para crear objetos (instancias) con propiedades (datos) y métodos (funciones), definida con la palabra clave class, permitiendo herencia y siendo un tipo de referencia (comparten memoria), a diferencia de las struct (tipos de valor). Las clases son fundamentales para la programación orientada a objetos en Apple, permitiendo modelar conceptos complejos, con la necesidad de crear un inicializador (init) personalizado y la posibilidad de heredar de otras clases.
 
 La idea es la reutilización de propiedades , métodos  de otras estructuas

 Fundamento de POO
 
 */
class Vehiculo {
    // propiedades o características
    var marca: String
    var modelo: String
    var velocidad : Int = 0
    
    // inicializacion de todos valores
    init(marca: String, modelo: String, velocidad: Int = 0) {
        self.marca = marca
        self.modelo = modelo
        self.velocidad = velocidad
    }
    
    // Metodos de la clase
    func acelerar(delta: Int) {
        velocidad = velocidad + delta
        // o usar self cuando el parametro tiene el mismo nombre que la variable de la clase
    }
    
}

// seteando valores
var miCoche = Vehiculo(marca: "Nissan", modelo: "pulsar", velocidad: 0)

print(miCoche.marca , miCoche.modelo , miCoche.velocidad)

// usando el método y pasando le valores
miCoche.acelerar(delta: 10)

print(miCoche.velocidad)

// Herecia
// la clase nueva VehiculoLujo hereda propiedades y metodos de la clase "padre" Vehiculo

class VehiculoLujo: Vehiculo {
    // inicializamos solo las de la propia clase
    var asientosCuero: Bool = false
    
    // solo se debe de usar siempre y cuando las variables de esta calse no se inicialicen
    // esto nos opbligaría a al llaamr a la calse inicializar.
    /*
    init(marca: String, modelo: String, asientosCuero: Bool, velocidad: Int = 0) {
        self.asientosCuero = asientosCuero
        // inicializacion en vase a la clase padre
        super.init(marca: marca, modelo: modelo, velocidad: velocidad)
    } */
    
    // modepmso tener metodos privado o publicos
    
    // podemos sobreescribr sobre una funcion de la clase padre
    override func acelerar(delta: Int) {
        velocidad = velocidad + delta * 2
    }
    
    func subscripcion ( subscripcion: Bool) {
        asientosCuero = subscripcion
    }
    
}

//usando la clase de lujo
var miCocheLujo = VehiculoLujo(marca: "Nissan", modelo: "pulsar Luxury")

print(miCocheLujo.marca , miCocheLujo.modelo , miCocheLujo.velocidad)

// usando el método y pasando le valores
miCocheLujo.acelerar(delta: 10)

print(miCocheLujo.velocidad)
 
var miCocheLujo02 = VehiculoLujo(marca: "Nissan", modelo: "pulsar Luxury")

miCocheLujo02.subscripcion(subscripcion: true)
miCocheLujo02.acelerar(delta: 30)

print(miCocheLujo02.velocidad, miCocheLujo02.asientosCuero)



// ----------------------------------------------

// Propiedades y/o métodos publicos o privados
// por defecto son publicas usando la anotacion "."
// ejemplo .- clase.propiedad / o funcion

// Pero quizas queramos que para modificar en los ejemplos la velocidad solo podamos hacerlo llamado
// a la funcion que actualiza velocidad
// Esto se llama ENCAPSULAMIENTO
//

// contemas privados
class Pantalla {
    // private set no podemos modificar la varioable desde fuera pero podemos leer el contenido de esta
    // revisar conceptop de  .- encapsulacion
    private(set) var ancho : Int
    private(set) var alto : Int
    private(set) var pixel : Int = 0
    
    init (ancho : Int, alto : Int) {
        self.ancho = ancho
        self.alto = alto
        actualizarpixel()
    }
    
    func modificartamañopantalla ( nuevoancho: Int, nuevoalto: Int) {
        ancho = nuevoancho
        alto = nuevoalto
        actualizarpixel()
    }
    
    // funciones privadas que solo se usan dentro de la clase y no son visibles desde fuera de esta clase 
    private func actualizarpixel() {
        pixel = ancho * alto
    }
}

var mipantalla = Pantalla(ancho: 2400, alto: 2000)
print(mipantalla.pixel)
mipantalla.modificartamañopantalla(nuevoancho: 1920, nuevoalto: 1080)
print(mipantalla.pixel)
