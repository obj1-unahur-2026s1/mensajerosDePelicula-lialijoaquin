import vehiculo.*
object neo {
    var credito = 0
    method pesoTotal() = 0
    method puedeLlamar() = credito > 0
    method cargarCredito(valor) {credito += valor}
    method consumirCredito(valor) {(credito - valor).max(0)}
}


object chuckNorris {
    method pesoTotal() = 80
    method puedeLlamar() = true

}

object roberto {
    var vehiculo = bicicleta
    var property peso = 90 //puede cambiar el peso
    method pesoTotal() {
        return peso + vehiculo.peso()
    }
    method cambiarDeVehiculo(unVehiculo) {
        vehiculo = unVehiculo
    }
    method puedeLlamar() = false
}