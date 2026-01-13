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

var parametro: String = "mundo"

func saludar2 (par01: String) {
    print("hola \(par01)")
}

saludar2(par01: parametro)
