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
	
	method esGrande(){
		return mensajeros.size()>2
	}
	
	method entregarPaquete(paquete){
		
	}
	
	method pesoUltimoMsjro(){
		return mensajeros.last().peso()
	}
	
}
