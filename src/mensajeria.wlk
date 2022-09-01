object mensajeria {
	const mensajeros = []
	
	method contratar(mensajero){
		mensajeros.add(mensajero)
	}
	
	method despedir(mensajero){
		mensajeros.remove(mensajero)
	}
	
	method despedirTodos(){
		mensajeros.clear()
	}

	method primeroPuedeEntregar(paquete){
		return paquete.puedeSerEntregadoPor(mensajeros.first())
	}
	
	method esGrande(){
		return mensajeros.size()>2
	}
	
	method pesoUltimoMsjro(){
		return mensajeros.last().peso()
	}
	
}
