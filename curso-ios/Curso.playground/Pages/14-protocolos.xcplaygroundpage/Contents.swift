//Priotocoloes (asociado a Clase )

import Foundation

// Por definición una clase solo puede heredar de una clase padre
// para que pueda heredar de más de una se necesita Protocolos


// como si fuese una plantilla y manda su estructura sobre los struc
protocol Vehiculo {
    
    // propiedades que podemos leer sin definición
    var marca: String { get }
    // propiedad de lectura y escritura
    var velocidadActiual: Double { get set }
    
    
    // funciones del protocolo
    mutating func acelerar(delta :Double)
    
    func describir() -> String
    
}


// extenciones : crear implementaciones por defecto
// o ampliar funcionalidades de uns struct o class sin tener que crear herencia

// extenxión sobre la clase vehiculo
extension Vehiculo {
    func describir() -> String {
        "\(marca) viaja a \(velocidadActiual) km/h"
    }
}


// creamos la estructura que se alimenta del protoicolo

struct Coche: Vehiculo {
   var marca: String
    var velocidadActiual: Double
    
    mutating func acelerar(delta: Double) {
        velocidadActiual += delta
    }
}

var coche01 = Coche(marca: "nissa", velocidadActiual: 100)
print(coche01.describir())
