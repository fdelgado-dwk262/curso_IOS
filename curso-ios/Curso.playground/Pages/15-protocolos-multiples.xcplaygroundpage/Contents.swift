// Multiples protocolos

import Foundation

// _----------------------------------------------------
// Multiples protocolos
// algo parecido a la herencia multiple )

// partimos de dos protocolos

// Revisar este tema !!!

protocol Resproducir {
    func reproducir()
    func pausar()
    func detener()
}

protocol ControlVolumen {
    var volumen: Int {get set}
    func subirVolumen()
    func bajarVolumen()
}


class ReproducirMusica: Resproducir, ControlVolumen {

    // estado interno con un enumerador
    enum EstadoInterno {
        case reproduciendo
        case detenido
        case pausado
    }
    
    
    private var cancionActual: String = ""
    var volumen: Int = 50
    private var estadoInterno: EstadoInterno = .detenido
    
    
    func reproducir() {
        if estadoInterno == .reproduciendo {
            print("No puedes hacer esta acción - esta en reproducción")
            return
        
        } else {
            print("reproduciendo \(cancionActual)")
            estadoInterno = .reproduciendo
        }
    }
    
    func pausar() {
        if estadoInterno == .detenido {
            print("no se puede pausar, esta detenido")
        } else {
            print("Pausa musica \(cancionActual)")
            estadoInterno = .pausado
        }
    }
    
    func detener() {
        if estadoInterno != .detenido {
            print("Detener musica \(cancionActual)")
            estadoInterno = .detenido
        } else {
            print("Detenido")
        }
    }
    
    func subirVolumen() {
        if volumen >= 100 {
            print("subir volumen")
            volumen += 10
        } else {
            print("volumen al maximo")
        }
        print("volumen al \(volumen)")
    }
    
    func bajarVolumen() {
        if volumen >= 10 {
            print("vajar volumen")
            volumen -= 10
        } else {
            print("volumen al mínimo")
        }
        print("volumen al \(volumen)")
    }
    
    func cambiarCancion(nuevaCancion: String) {
        cancionActual = nuevaCancion
    }
    
}

var miReproductor = ReproducirMusica()

// diferentes casos de uso y respuestas posibles
miReproductor.cambiarCancion(nuevaCancion: "Lolailo")
miReproductor.reproducir()
miReproductor.pausar()
miReproductor.detener()
miReproductor.detener()
miReproductor.reproducir()
miReproductor.reproducir()
miReproductor.detener()
miReproductor.pausar()
