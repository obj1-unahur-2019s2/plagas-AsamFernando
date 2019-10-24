import plagas.*

class Hogar {
	var property nivelMugre=0
	var property nivelConfort=0
	
	method esBuena() {
		return nivelMugre <= nivelConfort/2
	}
	method recibirAtaque(plaga) {
		nivelMugre+=plaga.nivelDanio()
	}
}

class Huerta {
	var property capacidadProduccion=0
	const property nivelProduccion=nivelProd
	
	method esBuena() {
		return capacidadProduccion > nivelProduccion.nivel()
	}
	method recibirAtaque(plaga) {
		if(not plaga.transmiteEnfermedades()) {
			capacidadProduccion-= plaga.poblacion() * 0.1
		}
		else {
			capacidadProduccion-= plaga.poblacion() * 0.1 + 10
		}
	}
}

object nivelProd {
	var property nivel=0
}

class Mascota {
	var property salud
	
	method esBuena() {
		return salud > 250
	}
	method recibirAtaque(plaga) {
		if(plaga.transmiteEnfermedades()) {
			salud-=plaga.nivelDanio()
		}
	}
}

class Barrio {
	const property elementos= []
	
	method agregarElemento(elemento) {
		elementos.add(elemento)
	}
	
	method esCopado() {
		return elementos.count{ e => e.esBuena() } > elementos.count{ e=> not e.esBuena() }
	}
	
}













