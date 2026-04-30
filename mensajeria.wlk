import mensajero.*


object empresa {
    var mensajeros = #[]
    method mensajeros() = mensajeros
    method contratarUnMensajero(unMensajero){
        mensajeros.add(unMensajero)
    }
    method despedirUnMensajero(unMensajero) {
        mensajeros.remove(unMensajero)
    }
    method despedirATodosLosMensajeros() {
        mensajeros.clear()
    }
    method agregarListaDeMensajeros(listaDeMensajeros) {
        mensajeros.addAll(listaDeMensajeros)
    }
    method eliminarListaDeMensajeros(listaDeMensajeros) {
        mensajeros.removeAll(listaDeMensajeros)
    }
}