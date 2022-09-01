object roberto{
	const pesoPropio = 90
	var property transporte = bicicleta
	
	method peso(){
		return pesoPropio + transporte.peso()
	}
	
	method puedeLlamar(){
		return false
	}
	
	method llegarA(destino){
		return destino.puedeEntrar(self)
	}
	
	method puedeEntregarPaquete(paquete,destino){
		return (paquete.estaPagado() && self.llegarA(destino))
	}
}

object neo{
	var property peso = 0
	var property credito = true

	method puedeLlamar(){
		return credito
	}
	
	method llegarA(destino){
		return destino.puedeEntrar(self)
	}
	
	method puedeEntregarPaquete(paquete,destino){
		return (paquete.estaPagado() && self.llegarA(destino))
	}
}

object chuckNorris{
	var property peso = 900
	
	method puedeLlamar(){
		return true
	}
	
	method llegarA(destino){
		return destino.puedeEntrar(self)
	}
	method puedeEntregarPaquete(paquete,destino){
		return (paquete.estaPagado() && self.llegarA(destino))
	}
}

object paquete{
	var property destino = laMatrix
	var property estaPagado = true

	method puedeSerEntregadoPor(msjro){
		return estaPagado && destino.puedeEntrar(msjro)
	}
}

object paquetito{
	var property destino = laMatrix
	var property estaPagado = true

	method puedeSerEntregadoPor(msjro){
		return true
	}
}

object paqueton {
	var property destinos = []
	var property saldo = 0 
	const estaPagado = true

	method agregarDestino(destino){
		destinos.add(destino)
	}

	method precioTotal(){
		return 100*destinos.size()
	}

	method estaPago(){
		return saldo >= self.precioTotal()
	}

	method puedeSerEntregadoPor(msjro){
		return destino.all({unDestino => unDestino.puedeEntrar(msjro)})
	}

}

object bicicleta{
	var property peso = 1
}

object acoplado{
	const property peso = 500
}

object camion{
	var property acoplados = 0
	var property pesoBase = 500

	method peso(){
		return pesoBase + acoplados*acoplado.peso()
	}
}

object puenteDeBrooklyn {
	method puedeEntrar(alguien){
		return alguien.peso() < 1000
	}
}
object laMatrix {
	method puedeEntrar(alguien){
		return alguien.puedeLlamar()
	} 
}

//map --> devuelve una lista nueva con los mismos elementos de la original 
//pero con el mensaje que le pases ya aplicado
//const edades = personas.ma({persona => persona.edad()})


//filter --> devuelve una lista nueva con los elementos que cumplan la condicion pasada como bloque
//const mayores = personas.filter({persona => persona.edad() > 18})


//forEach --> genera un impacto o modificacion en todos los elementos de la list ay no retorna nada
//const algo = personas.forEach({persona => persona.cumplirAnios()})


//any
//all 
//reduce
//count

