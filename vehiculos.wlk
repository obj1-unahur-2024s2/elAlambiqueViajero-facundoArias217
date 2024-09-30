object alambiqueVeloz {
    var combustible = 40

    method esRapido() = true
    method sufrirConsecuencias() {combustible = 0.max(combustible - 5)}
    method combustible() = combustible
    method tieneNitroo() = true
}
object supChatarraEsp {
    var tieneMunicion = false

    method esRapido() = true
    method sufrirConsecuencias() {tieneMunicion = !tieneMunicion}
    method combustible() {if (tieneMunicion) 50 else 30}
    method tieneNitro() = !tieneMunicion
  
}
object antiguallaBlindada {
    var combustible = 28
    var gangsters = 4

    method esRapido() =  gangsters > 7
    method aniadir1Gangster() {gangsters +=1}
    method sufrirConsecuencias() {0.max(gangsters - 2)}
    method combustible() = 
    if (self.esRapido()){
        gangsters = 1.max(gangsters -1)}
    else {
        combustible = 0.max(combustible -4)
    }
    method tieneNitro() = (gangsters > 9) and (combustible > 12)
}
object superConvertible {
    var convertidoEn = alambiqueVeloz

    method esRapido() = !convertidoEn.esRapido()
    method convertidoEn() = convertidoEn
    method sufrirConsecuencias() {convertidoEn = antiguallaBlindada}
    method combustible() = convertidoEn.combustible()
    method tieneNitro() = convertidoEn.tieneNitro()
}