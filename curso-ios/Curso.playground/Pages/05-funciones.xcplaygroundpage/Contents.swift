// Funciones

import Foundation

// definicion de funcion básica
func saludar () {
    print("hola mundo")
}

// llamamos a la funcion
saludar()

// ----------------
// pasamos un parametro
// El scope de la variable que pasamoscomomparametro
// solo es valido dentyro de el ambito de la función, o sea, entre llaves

// nota el parametro siempre hay que tiparlo

var parametro: String = "mundo"

func saludar2 (par01: String) {
    print("hola \(par01)")
}

saludar2(par01: parametro)

// con guión bajo "_"
// hacemos que en la llamada a la función no sea necesario igualar parametro y dato

// nota lso parametro deben de ir separados por comas tanto en la función comom en la llamada

func saludar3 (_ par03: String , _ par04: Int) {
    print("hola \(par03) \(par04)")
}

saludar3("mundo", 3)

// funcion que nos retorna un valor
// puede ser de cual tipo en el retorno pero los
// en el return deben de ser del tipo que se defina en la funcion
// -> [double / int / string ... ]
func sumar (a: Int, b: Int) -> Int {
    var suma = a + b
    return suma
}

sumar(a: 2, b: 3)
print( sumar(a: 2, b: 3))

// -------------------------------

// funcpioones que retornan varios valores
// Usaremos de las tuplas en la salida de datos

// ejem,plo que nos retorna de una división entera y el resto

func calcularDivisionResto (dividendo: Int, divisor: Int) -> (division: Int, resto: Int) {
    let division = dividendo / divisor
    let resto = dividendo % divisor
    return (division, resto)
}

let resultado = calcularDivisionResto(dividendo: 50, divisor: 2)
print(resultado.division)
print(resultado.resto)


// -------------------------------

// Funciones con return implicito
// solo cuando hay una única expresión
// no se usa el retun

func saludar4 (_ par04: String) -> String{
    "hola \(par04)"
}

print( saludar4("04") )


// -------------------------------

// Funciones con parámetrois por defecto

func saludar5 (_ par05: String = "01") -> String{
    "con parametro por defecto \(par05)"
}

print( saludar5() )


func saludar6(_ par06: String = "01", _ educado: Bool = true) -> String{
    if educado {
        "Es true y saludas a \(par06)"
    } else {
        "false sin educación a \(par06)"
    }
}

print( saludar6("conocido", false) )
print( saludar6("desconocido") )


// -------------------------------
// funcion con parásmetros variables ( de cero o "N" parámetro
// usando la sintaxis "..."

func calcularSuma(_ numeros: Int...) -> Int {
    var acumulado = 0
    // si llamamos a la función con parametro ( 1,2,3 )
    // la variable numero cogera cada uno de los parametros de en numeros es decir
    // tomará los valores uno por uno y ene ste caso los suma
    for numero in numeros {
        acumulado += numero
    }
    return acumulado
}

print(calcularSuma(1,2,3))


// -------------------------------
// -------------------------------
// fiunciones como variables y tipos de funcion

// partimos de una funcion ya creada anteriormente
/*
 func sumar (a: Int, b: Int) -> Int {
    var suma = a + b
    return suma
}

sumar(a: 2, b: 3)
print( sumar(a: 2, b: 3))
*/
func restar (a: Int, b: Int) -> Int {
   var suma = a - b
   return suma
}


var funcionSuma: (Int, Int) -> Int = sumar
print( funcionSuma(100,200))

// --------------------------------

// funcion generica
// var funciongenerica: (Int, Int) -> Int = sumar
var funciongenerica: (Int, Int) -> Int

funciongenerica = sumar
print(funciongenerica(2,3))

funciongenerica = restar
print(funciongenerica(2,3))


func usarFuncionGenerica(_ funcion: (Int,Int) -> Int, a: Int, b:Int) -> Int {
    return funcion(a,b)
}
usarFuncionGenerica(sumar, a: 1, b: 3)
usarFuncionGenerica(restar, a: 1, b: 3)

// --------------------------------
