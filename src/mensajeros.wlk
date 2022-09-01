object roberto{
	var property transporte = bicicleta
	
	method peso(){
		return 90+transporte.peso()
	}
	
	method tieneCelular(){
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
	method tieneCelular(){
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
	
	method tieneCelular(){
		return true
	}
	
	method llegarA(destino){
		return destino.puedeEntrar(self)
	}
	method puedeEntregarPaquete(paquete,destino){
		return (paquete.estaPagado() && self.llegarA(destino))
	}
}

object paquetito{
	var property destino = laMatrix
	var property estaPagado = true
	
}

object paquete2{
	var property destino = puenteDeBrooklyn
	var property estaPagado = true
	
}

object paquete3{
	var property destino = laMatrix
	var property estaPagado = false
	
}

object bicicleta{
	var property peso = 1
}

object camion{
	var property peso = 500
}

object puenteDeBrooklyn {
	method puedeEntrar(alguien){
		return alguien.peso() < 1000
	}
}
object laMatrix {
	method puedeEntrar(alguien){
		return alguien.tieneCelular()
	} 
}

