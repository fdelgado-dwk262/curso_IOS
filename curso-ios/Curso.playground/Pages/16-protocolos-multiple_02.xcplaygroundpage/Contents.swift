// caso de uso

import Foundation

// uso de protocolospara poder comparar objetos de tipos struct o class
// mediante el "==" de swift con el "Equatable"
// (ojo no es como en js que sirve si pones === para la equivalencia del tipado)

// se puede reallizar comparaciones con "Comparable"
// swift no implementa comparador de manera automática por cada propiedad

struct Producto: Equatable {
    let nombre: String
    let precio: Double
}

let producto1 = Producto(nombre: "Laptop", precio: 999.99)
let producto2 = Producto(nombre: "Laptop ibm", precio: 1020.99)

print("es igual p1 a p2 ? \(producto1 == producto2)")


// solo por un campo
// igualamos o comparamos ( con < o > )
struct OtroProducto: Equatable, Comparable {
    
    
    let nombre: String
    let precio: Double
    let datos: String
    
    // lhs .- left hand side / rhs .- right hand side
    static func == (lhs: OtroProducto, rhs: OtroProducto) -> Bool {
        
        // ejemplo solo un parametro
        // return lhs.nombre == rhs.nombre
        
        // ejemplo varios parametros
        let comparcionNombre = lhs.nombre == rhs.nombre
        let comparacionPrecio = lhs.precio == rhs.precio
        return comparcionNombre && comparacionPrecio
    }
    
    static func < (lhs: OtroProducto, rhs: OtroProducto) -> Bool {
        // ejemplo solo un parametro
        return lhs.precio < rhs.precio
    }
    
    static func > (lhs: OtroProducto, rhs: OtroProducto) -> Bool {
        // ejemplo solo un parametro
        return lhs.precio > rhs.precio
    }
    
}

let otroProducto1 = OtroProducto(nombre: "C", precio: 999.99, datos: "datos")
let otroProducto2 = OtroProducto(nombre: "B", precio: 1300, datos: "daots 02")
let otroProducto3 = OtroProducto(nombre: "A", precio: 1020, datos: "daots 03")

print("es ifgual solo el nombre ? \(producto1 == producto2)")
print("compara precio es menor? \(otroProducto1 < otroProducto2)")
print("compara precio es mayor? \(otroProducto1 > otroProducto2)")

var productosArray = [otroProducto1, otroProducto2, otroProducto3]

// ordena el array en base a los contenidos que hemos montado en base al protocolo que a su vez
// este tiene una funcion statica de ordenacion y de comapración "Comparable"

// implace coje el array y lo modifica
productosArray.sort()

// nos retorna una copia de una array no modifica el array inicial se debe de igualar a una variable
// productosArray.sorted()

for producto in productosArray {
    print(producto)
}
