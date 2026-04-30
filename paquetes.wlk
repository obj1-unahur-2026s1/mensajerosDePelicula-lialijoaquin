import destinos.*
import mensajero.*

object paquete {
    var destino = brooklyn
    var estaPago = false
    method cambarDestino(nuevoDestino) {destino=nuevoDestino}
    method estaPago() = estaPago
    method registrarPago() {
        estaPago = true
    }
    method cancelarPago() {
        estaPago = false}
    method puedeSerEntregado(unMensajero) {
        return estaPago && destino.dejaPasar(unMensajero)
    }  
}
object paquetito {
    method estaPago() = true
    method puedeSerEntregado(unMensajero) = true
}

object paquetonViajero{
    const destinos = #()
    var importePagado = 0
    method precioTotal() = destinos.size() * 100
    method pagoParcial(unValor) {
        (importePagado += unValor).min(self.precioTotal())
    }
    method estaPago() = importePagado == self.precioTotal()
    method puedeSerEntregado(unMensajero) {
        return self.estaPago() 
        && destinos.all({d => d.dejaPasar(unMensajero)})
    }
}