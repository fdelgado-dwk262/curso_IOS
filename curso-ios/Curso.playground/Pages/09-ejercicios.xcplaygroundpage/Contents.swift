// Ejercicios de pruebas

import Foundation


print(" \n -------------------1-------------------------- \n")
/*
 🟢 Nivel 1 – Fundamentos y lógica básica
 1️⃣ Variables y constantes
 Declara una constante con tu nombre y una variable con tu edad.
 Imprime una frase del tipo:
 "Me llamo ___ y tengo ___ años"
 Cambia la edad y vuelve a imprimirla.
 2️⃣ Operaciones con números
 Declara dos variables a y b.
 Calcula:
 suma
 resta
 multiplicación
 división
 Imprime los resultados con texto explicativo.
 3️⃣ Cadenas (String)
 Declara una frase.
 Imprime:
 número de caracteres
 la frase en mayúsculas
 la frase en minúsculas
 Comprueba si la frase contiene una palabra concreta (por ejemplo "Swift").
*/

// documentacion de cadenas
// https://swift-book-es.vercel.app/guia-del-lenguaje/cadenas-y-caracteres

// 1️⃣ Variables y constantes
let nombre: String = "Fernando"
var edad: Int = 50

print("Me llamo \(nombre) y tengo \(edad) años")

// 2️⃣ Operaciones con números
let a: Int = 5
let b: Int = 2

print("Suma: \(a + b)")
print("Resta: \(a - b)")
print("Multiplicación: \(a * b)")
print("División entera: \(a / b)")

// División con decimales
let divisionDecimal = Double(a) / Double(b)
print("División decimal: \(divisionDecimal)")

// 3️⃣ Cadenas (String)
let cadena: String = "Lorem ipsum dolor sit amet"

print("Número de caracteres: \(cadena.count)")
print(cadena.uppercased())
print(cadena.lowercased())

let frase = "Hola, bienvenido al curso de Swift"
let subcadena = "bienvenido"

if frase.contains(subcadena) {
    print("La subcadena existe")
} else {
    print("Subcadena no encontrada")
}

// -------------------------------------
print(" \n -------------------2-------------------------- \n")
/*
 🟡 Nivel 2 – Arrays y colecciones
 4️⃣ Array de enteros
 Crea un array con 5 números.
 Imprime:
 el primer y último elemento
 el número total de elementos
 Añade un número nuevo y elimina otro.
 Recorre el array con un for e imprime cada valor.
 5️⃣ Array de cadenas
 Crea un array con nombres de personas.
 Imprime solo los nombres que tengan más de 5 caracteres.
 Ordena el array alfabéticamente e imprímelo.
 6️⃣ Suma de valores en un array
 Dado un array de números enteros:
 calcula la suma total
 calcula la media
 Imprime ambos resultados.
 */

// documentacion colecciones
// https://swift-book-es.vercel.app/guia-del-lenguaje/tipos-de-colecciones
 
// 4️⃣ Array de enteros
var arrayEnteros:[Int] = [1,2,3,4,5,6,7,8,9]
var contador = arrayEnteros.count - 1
print(arrayEnteros[contador])
print(arrayEnteros[0])
arrayEnteros.append(10)
arrayEnteros.remove(at: 2)
print(arrayEnteros)

for item in arrayEnteros {
    print(item)
}
        
// 5️⃣ Array de cadenas
var arrayCadenas:[String] = ["ee", "cccc", "aaaaa", "bbb", "ddddd"]

for cadena in arrayCadenas {
    if cadena.count == 5 {
        print(cadena)
    }
}

print(arrayCadenas.sorted())


// 6️⃣ Suma de valores en un array
var suma:Int = 0
for item in arrayEnteros {
    suma = suma + item
}
print("Suma de los daso del array \(suma)")

// -------------------------------------
print(" \n -------------------3-------------------------- \n")

 /*
 🟠 Nivel 3 – Diccionarios
 7️⃣ Diccionario simple
 Crea un diccionario donde:
 la clave sea el nombre de una persona
 el valor sea su edad
 Imprime la edad de una persona concreta.
 Añade una nueva persona y elimina otra.
 8️⃣ Recorrer un diccionario
 Recorre el diccionario anterior.
 Imprime frases como:
 "Ana tiene 23 años"
 9️⃣ Diccionario + lógica
 A partir del diccionario de edades:
 imprime solo las personas mayores de 18 años
 cuenta cuántas personas hay en total
*/


// 7️⃣ Diccionario simple
var diccionarioEdades:[String:Int] = ["Ana":23, "Luis":34, "Sofía":9, "Alejandra" : 14]
print("Edad de Ana: \(diccionarioEdades["Ana"]!)")
diccionarioEdades["María"]=25
diccionarioEdades.removeValue(forKey: "Luis")
print(diccionarioEdades)

// 8️⃣ Recorrer un diccionario

for (nombre, edad) in diccionarioEdades {
    print("usuario \(nombre) \(edad)")
}

// 9️⃣ Diccionario + lógica

var cont: Int = 0
print("mayores de edad: ")
for (nombre, edad) in diccionarioEdades {
    
    if edad >= 18 {
        print("usuario \(nombre) \(edad)")
        cont += 1
    }
}
print("total \(cont)")
print(" \n -------------------4-------------------------- \n")
/*
 🔵 Nivel 4 – Conjuntos (Set)
 🔟 Set de números
 Crea un conjunto con números repetidos.
 Comprueba que no se repiten.
 Añade y elimina elementos.
 Comprueba si un número concreto existe en el conjunto.
 1️⃣1️⃣ Operaciones entre conjuntos
 Crea dos conjuntos de números.
 Calcula:
 unión
 intersección
 diferencia
 Imprime los resultados.
*/

//🔟 Set de números

var conjuntoA: Set<Int> = [1,3,5,6,7,9,0,3,2,7]

for dato in conjuntoA {
    
    
    
}


//1️⃣1️⃣ Operaciones entre conjuntos


print(" \n -------------------5-------------------------- \n")
/*
 🟣 Nivel 5 – Ejercicios combinados
 1️⃣2️⃣ Análisis de una frase
 Dada una frase:
 separa las palabras
 guarda las palabras en un array
 usa un Set para contar cuántas palabras distintas hay
 Imprime:
 número total de palabras
 número de palabras únicas
 1️⃣3️⃣ Mini gestor de alumnos
 Usa un diccionario donde:
 clave → nombre del alumno
 valor → array de notas
 Para cada alumno:
 calcula la media
 indica si está aprobado (media ≥ 5)
*/

print(" \n -------------------reto-------------------------- \n")
/*
 🧠 Retos opcionales
 Escribe una función que reciba un array de enteros y devuelva el mayor.
 Dada una palabra, comprueba si es un palíndromo.
 Convierte una frase en camelCase.
*/








// -------------------------------------
print("\n---------------------------------------------")
print("-----------Calculadora cutre ----------------")
print("--------------------------------------------- \n")
// ejercicio a desarrollar
// calculadora
// pendiente de hacer un cast

 
 func calculadoraBase (_ a:Int,_ b:Int,_ operacion:String) -> Int {
    var result: Int
    if operacion == "suma" {
        result = a+b
    } else if operacion == "resta" {
        result = a-b
    } else if operacion == "mutiplicacion" {
        result = a*b
    } else if operacion == "dividir" {
        result = a/b
    } else {
    result = 0
    }
    return result
}
 
print("la suma \(calculadoraBase(2,2,"suma"))")
print("la resta \(calculadoraBase(2,2,"resta"))")
print("la multiplicacion \(calculadoraBase(2,2,"multiplicacion"))")
print("la division \(calculadoraBase(2,2,"dividir"))")
