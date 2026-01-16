// Closure - funciones anonimas
import Foundation

// Closures (funciones anonimas)

func saludar(nombre : String) -> String {
    return "Hola \(nombre)"
}



// lo que queda entre las llaves es el Closure
let saludarClosure = { (nombre: String) -> String in
    return "Hola \(nombre)"
}

// para usarlo
print(saludar(nombre: "funcionNormal"))
print(saludarClosure("Matias - closure"))

// ejemplo de uso abreviado Casos de uso y fromas de abrevacion
// print({ (nombre: String) -> String in return "Hola \(nombre)"})

// notacion abreviada de uso comun en ejemplo
let closure1 = {(a:Int, b:Int) -> Int in return a + b}

// mas abreviada - infiere en el tipo de retorno
let closure2 = {(a:Int, b:Int) in return a + b}

// Puede inferir en los tpo de los paramatero
let closure3 : (Int, Int) -> Int = { a, b in a + b}
    
// Uso de parametros abreviados $0, $1 en vez de a y b
let closure4 : (Int, Int) -> Int = { return $0 + $1 }

// forma breve son return
let closure5 : (Int, Int) -> Int = { $0 + $1 }

// abrevacion extrema
let closure6 : (Int, Int) -> Int = (+)

print("let closure1 = {(a:Int, b:Int) -> Int in return a + b}   \(closure1(2,4))")
print("let closure2 = {(a:Int, b:Int) in return a + b}   \(closure2(2,4))")
print("let closure3 : (Int, Int) -> Int = { a, b in a + b}   \(closure3(2,4))")
print("let closure4 : (Int, Int) -> Int = { return $0 + $1 }   \(closure4(2,4))")
print("let closure5 : (Int, Int) -> Int = { $0 + $1 }   \(closure5(2,4))")
print("let closure6   \(closure6(2,4))")


// ---------------------------
// Funciones que reciben closures como parametros
// siguiente caso le pasamos a la funcion procesarNunmeros()
// 3 parámetros
// a, b , una funcion closure
// el retorno es la funcion closure .- operacion:(Int, Int) -> Int
func procesarNunmeros(_ a: Int, _ b: Int, operacion:(Int, Int) -> Int) -> Int {
 
    return operacion(a,b)
}

let sumar = { (a:Int, b:Int) -> Int in a + b}
let resta = { (a:Int, b:Int) -> Int in a - b}
let multiplicar = { (a:Int, b:Int) -> Int in a * b}
let dividir = { (a:Int, b:Int) -> Int in a / b}

print( procesarNunmeros(2, 3, operacion: sumar) )
print( procesarNunmeros(6, 3, operacion: resta) )
print( procesarNunmeros(2, 3, operacion: multiplicar) )
print( procesarNunmeros(20, 2, operacion: dividir) )

// podemos pasarlo como funcion anonima en sus duferentes versiones (
print( procesarNunmeros(2, 2, operacion:{x,y in x+y} ))


// ---------------------------------
// Trailing Closures : cuando la función que se le pasa es el ultimo parametro
// noita siempre y cuando la funciona clsore esté como último parametro en la función
// funcion( parameto0, parametro1 , ......,  parametroN , closure )
procesarNunmeros(2, 3) {$0 + $1}

// Nota uso de las fubnciones anonimas / closure
// para funciones con operaciones muy pequeñas


// ejemplo de Trailing Closure
// nota dos formas de rrellenar un array de numeros de a a n
let numeros = [1,2,3,4,5,6,7,8,9,10]
let nunmerosArray = Array(1...10)

// filtrado nos da los mayores de 5
let numerosMasd5 = numeros.filter {$0 > 5}
print(numerosMasd5)

// Mapeo de valores
let numerosAlCuadrado = numeros.map {$0 * $0}
print(numerosAlCuadrado)

// convertir a un string
let tostring = numeros.map { String($0)}
print(tostring)

// ordenar
var desordenaos = [2,10,6,1,8,9,3,0,4,5,1]
let ordenarMayorAMenor = desordenaos.sorted() {$0 > $1}
let ordenarPorDefect = desordenaos.sorted(by: <)
print(ordenarMayorAMenor)
print(ordenarPorDefect)
