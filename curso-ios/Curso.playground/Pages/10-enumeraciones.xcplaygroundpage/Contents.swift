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
