import elementos.*

class Plaga {
	var property poblacion=0
	
	method nivelDanio() { return 0 }
	method transmiteEnfermedades() {
		return poblacion >= 10
	}
	method atacar(elemento) {
		elemento.recibirAtaque(self)
		self.consecuenciaDelAtaque()
	}
	method consecuenciaDelAtaque() {
		poblacion*=1.1
	}
}

class Kukas inherits Plaga {
	var property pesoProm
	
	override method nivelDanio() = poblacion/2
	
	override method transmiteEnfermedades() {
		return super() and pesoProm>=10
	}
	override method atacar(elemento) {
		super(elemento)
		pesoProm+=2
	}
}

class Pulgas inherits Plaga {
	override method nivelDanio() {
		return poblacion*2
	}
}

class Garrapatas inherits Pulgas {
	override method consecuenciaDelAtaque() {
		poblacion*=1.2
	}
}

class Mosquito inherits Plaga {
	override method nivelDanio() {
		return poblacion
	}
	override method transmiteEnfermedades() {
		return poblacion%3==0
	}
}








