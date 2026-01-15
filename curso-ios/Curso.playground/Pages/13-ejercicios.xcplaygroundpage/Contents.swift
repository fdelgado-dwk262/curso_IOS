import Foundation


// Ejercicio .- creamos una tienda
// requisitos
/*
 
    combina una clase , struc, y una coleccion de arrays.
 con varios productos en stock
 
 */

struct Producto {
    let nombre : String
    var precio: Double
    var stock: Int
    
    // propiedad computada .- se clacula cada vez que se acceda a ella a leer el contenido
    var valorTotal: Double {
        return precio * Double(stock)
    }
    
    func mostrarInfoProducto() -> String {
        return "\(nombre) - \(precio) € - \(stock) unidades - Valor total \(valorTotal) €"
    }
}

class Tienda {
    let nombre : String
    private(set) var productos: [Producto] = []
    
    init(nombre: String) {
        self.nombre = nombre
    }

    func agregarProducto(_ producto: Producto) {
        productos.append(producto)
    }
    
    func mostrarInventario() {
        print("invenatario tienda")
        for producto in productos {
            print(producto.mostrarInfoProducto())
        }
    }
    
    func totalinventario() -> Double {
        
        var acumulado = 0.0
        for producto in productos {
            acumulado += producto.valorTotal
        }
        return acumulado
        
        // otra forma de hacerlo mas reducida y obtimizada
        //return productos.reduce(0.0) {
        //    $0 + $1.valorTotal
        //}
    }
    
    func agregarExistncias(nombreProducto: String, existencias: Int) {
        
        // condicional si no es nill ( nulo) 
        if let indice = productos.firstIndex(where:{$0.nombre == nombreProducto}) {
            productos[indice].stock += existencias
        }
    }
}

var producto01 = Producto(nombre: "Cama", precio: 100, stock: 10)
var producto02 = Producto(nombre: "Mesa", precio: 80, stock: 15)
var producto03 = Producto(nombre: "Silla", precio: 50, stock: 20)

var tienda = Tienda(nombre: "Tienda de muebles")
tienda.agregarProducto(producto01)
tienda.agregarProducto(producto02)
tienda.agregarProducto(producto03)

// print(tienda.productos[0].mostrarInfoProducto())

tienda.mostrarInventario()
print(tienda.totalinventario())

print(tienda.productos.count)

