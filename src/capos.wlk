import bandos.*
import artefactos.*
import elementos.*

//------Capos------

class Capo {

	var property luchaBase = null
	var property hechiceriaBase = null
	var property artefactos = null
	var property bando = null
	
	//wollok game
	var property imagen = null
	var property nombre = null
	var property posicion = null
	method move(nuevaPosicion) { self.posicion(nuevaPosicion) }
	method llego(alguien) {
		self.encuentraCapo(alguien)
	}
	
	
	method incLuchaBase(puntos) {
		luchaBase += puntos
	}

	method incHechiceriaBase(puntos) {
		hechiceriaBase += puntos
	}

	method obtenerArtefacto(_artefacto) {
		artefactos.add(_artefacto)
	}

	method luchaArtefactos() = artefactos.sum({ _artefacto => _artefacto.lucha(self) })

	method hechiceriaArtefactos() = artefactos.sum({ _artefacto => _artefacto.hechiceria(self) })

	method luchaBase() {
		return luchaBase
	}

	method hechiceriaBase() {
		return hechiceriaBase
	}

	method luchaTotal() {
		return luchaBase + self.luchaArtefactos()
	}

	method hechiceriaTotal() {
		return hechiceriaBase + self.hechiceriaArtefactos()
	}

	method cambiarBando(_bando) {
		bando = _bando
	}

	method bando() {
		return bando
	}

	method encontrarElemento(elemento) {
		elemento.seEncuentraCon(self)
	}

	method artefactos() {
		return artefactos
	}
	
	method luchaYHechiceriaTotal() {
		return self.luchaTotal() + self.hechiceriaTotal()
	}

	//-----------------TP 2-------------------
	method esAmigoDe(capo) {
		//Este seria rolando   Este el capo que se encuentra
		return capo.bando() == self.bando() 			
	} 
	
	method pelea(capo) {
		//Este seria rolando              Este el capo que se encuentra
		if(capo.luchaYHechiceriaTotal() > self.luchaYHechiceriaTotal()) {
			game.removeVisual(self)
		}else game.stop()	
	}
	
	method encuentraCapo(capo) {
		if(capo.esAmigoDe(self)) {
			capo.artefactos().addAll(self.artefactos())
			//hay que remover los artefactos del amigo de rolando?		
		}else self.pelea(capo)
	}
	
	
	
}
