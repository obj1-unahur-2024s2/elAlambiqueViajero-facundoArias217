import lugares.*
import vehiculos.*

object carrear {
    var lugarDeLaCarrera = paris
    const property aceptados = [] 
    const property rechazados = []

    method sePuedeInscribir(unVehiculo) = lugarDeLaCarrera.sePuedeViajarEnVehiculo(unVehiculo)

    method inscripcion(unVehiculo) {
        if (self.sePuedeInscribir(unVehiculo)){
            aceptados.add(unVehiculo)
        } else {
            rechazados.add(unVehiculo)
        }
    }

    method replanificar(unLugar) {
        lugarDeLaCarrera = paris
        self.reinscripcion()
    } 

    method reinscripcion() {
        const participantes = aceptados + rechazados
        aceptados.clear() 
        rechazados.clear()
        participantes.forEach({e=> self.inscripcion(e)}) 
    }
    method irALaCiudad() {
        aceptados.forEach({e => e.sufrirConsecuencias()})
    }
  
}
