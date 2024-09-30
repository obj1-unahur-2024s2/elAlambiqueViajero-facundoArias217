import lugares.*
import vehiculos.*



object luke {
    var vehiculo = alambiqueVeloz
    const property lugaresVisitados = []

    method cantLugaresVisitados() = lugaresVisitados.size()
    method ultimoRecuerdo() = lugaresVisitados.last().recuerdo()

    method viajarA(unLugar) {
        if (unLugar.sePuedeViajarEn(vehiculo)){
            lugaresVisitados.add(unLugar)
            vehiculo.sufrirConsecuencias()
        }
    }

    method cambiarVehiculo(unVehiculo) {
        vehiculo = unVehiculo
    }
  
}