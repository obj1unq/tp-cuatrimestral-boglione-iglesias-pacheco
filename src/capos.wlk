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
	
	method move(nuevaPosicion) {
		self.posicion(nuevaPosicion)
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

	method cambiarBando(_bando) { // Comienza siendo del sur
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

	//-----------------TP 2-------------------
	method esAmigoDe(capo) {
		return bando == capo.bando() 			
	} 
	
}
