object paris {
    method recuerdo() = "llaveroTorreEiffel"
    method sePuedeViajarEnVehiculo(unVehiculo) = unVehiculo.combustible() >=10
  
}

object buenosAires {
    var presidente = "Nestor"
    method recuerdo() = if (presidente == "nestor") "Mate con yerba" else "mate sin yerba"

    method presidente() = presidente
    method cambiarPresidente(unPresidente){
        presidente = unPresidente
    }
    method sePuedeViajarEnVehiculo(unVehiculo) = unVehiculo.esRapido()
}

object bagdad {
    var property anio = 1900 
    method recuerdo() {
         if (anio.between(0, 1900)) {"Jardines colgantes"} 
         else if (anio.between(1901, 1999)) {"bidon de petroleo"} 
         else {"replicas de armas de destruccion masiva"}
    }

    method sePuedeViajarEnVehiculo(unVehiculo) = true
}

object lasVegas {
    var homenajeandoA = paris

    method recuerdo() = homenajeandoA.recuerdo()
    method homenajearA(unLugar) { homenajeandoA = unLugar }
    method homenajeandoA() = homenajeandoA
    method sePuedeViajarEnVehiculo(unVehiculo) = homenajeandoA.sePuedeViajarEnVehiculo(unVehiculo) 
}

// nuevo destino

object australia {
    method recuerdo() = "llavero de canguro"
    method sePuedeViajarEn(unVehiculo) =  unVehiculo.tieneNitro()
}