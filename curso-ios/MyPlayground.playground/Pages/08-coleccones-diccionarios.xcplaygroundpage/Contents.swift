// Diccionarios

import Foundation

// contiene asosciaciones entre clases y valores conocido como arrays asociativos
// por cada clave única un valor
// claves y valores serán de un único tipo

var diccionarioVacio: [String:String] = [:]
var diccionarionumeros: [Int: String] = [1:"uno", 2:"dos", 3:"tres"]
var diccionarionumerosInv: [String: Int] = ["uno":1, "dos":2, "tres":3]
var conBooleanos: [String: Bool] = ["pepe": true, "juan": false]


print(diccionarionumeros.isEmpty)
print(diccionarionumerosInv.count)
print(diccionarionumeros.keys)
print(diccionarionumeros.values)

// operaciones con diccionarios - borrar, actualizar, insertar

// insertar valor
conBooleanos["maria"] = true
conBooleanos["eduardo"] = true
print(conBooleanos)

// modificar el valor
conBooleanos["pepe"] = false
print(conBooleanos)

// leer un valor usando la clave
print(conBooleanos["juan"]!)
print("Esta en el diccionario \(conBooleanos["juan"]!) " )

// borrar un elemento del diccionario

conBooleanos["maria"] = nil
print(conBooleanos)

// iterar sobre todo el diccionario recuperando infromación

for (usuario, alta) in conBooleanos {
    
    if alta {
        print("\(usuario) es alta")
    } else {
        print("\(usuario) es baja")
    }
}
