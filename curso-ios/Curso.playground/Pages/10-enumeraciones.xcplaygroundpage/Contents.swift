// Enumeraciones

import Foundation

// Enumeraciones para definir un conjuto de valores dentro de una estructura

// al nos er una variables no usamos CamelCase
// sino la primera en mayuscula y por convenciones revisar siempre el netorno de trabajo en el que estemos

// es una estructura inmutable es decir que solo podemos
// acceder a los datos pero no modificarlos

enum DiasSemana {
    case lunes
    case martes
    case miercoles
    case jueves
    case viernes
    case sabado
    case domingo
}
// ó con la opcion de : CaseIterable para poderlo iterar

enum DiasClase02 : CaseIterable {
    case lunes, martes, miercoles, jueves, viernes, sabado, domingo
}


// crear variable usando la enumeracion
var diaSemana = DiasSemana.domingo
var diaSemanaOpcion02 : DiasSemana = .jueves

//se puede acceder
diaSemana = .lunes
diaSemana = .sabado

// podemos usar culquier structura y sentencais de control

if diaSemana == .sabado || diaSemana == .domingo {
    print("Es fin de semana")
} else {
    print("Es entre semana")
}

switch diaSemana {
    case .lunes, .martes, .miercoles, .jueves, .viernes:
        print("entre semana")
    case .sabado, .domingo:
        print("fin de semana")
}

// podemos usar un for para recorrelo pero con la salvedad
// de incluir en la definicion de la enumeracion ": CaseIterable"
/*

enum DiasClase02 : CaseIterable {
    case lunes, martes, miercoles, jueves, viernes, sabado, domingo
}

*/

for index in DiasClase02.allCases {
    print(index)
}

// ----------------------------------------

// RAW values .- asignar un valor dentro de un enum

enum DiasSemanaconNombre: String, CaseIterable{
    case lunes = "😩Lunes"
    case martes = "😳Martes"
    case miercoles = "😉Miercoles"
    case jueves = "😌Jueves"
    case viernes = "😁Viernes"
    case sabado = "😎Sabado"
    case domingo = "🤩Domingo"
}

enum Numeros: Int, CaseIterable {
    case primero = 1
    case segundo = 2
    case tercero
}

for index in DiasSemanaconNombre.allCases {
    print(index.rawValue)
}

for index in Numeros.allCases {
    print(index.rawValue)
}

// ejemplo de acceso a un valor de una case de un enum
var demoAccesoAValor = DiasSemanaconNombre.sabado.rawValue
print(demoAccesoAValor)

// si no se devin valor en el enum nos da el nombre del case
print(Numeros.tercero)


// nota usos en configuraciones con la anotacion .dato
// lineas 29 -35
// variable  = al enunciado
// variable = .nombre caso

