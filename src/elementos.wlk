//------Elementos------

class CofrecitoDeOro {
	const property oro = 100
	
	//wollok game
	const property nombre ="Cofrecito De Oro"
	const property imagen ="oro.png"
	method llego(alguien) {
		alguien.bando().aniadirTesoro(oro)
		game.removeVisual(self)
	}
	
	
	method seEncuentraCon(capo) {
		capo.bando().aniadirTesoro(oro)
	}
	
	
}

class CumuloDeCarbon {
	//wollok game
	const property nombre ="Cumulo de Carbon"
	const property imagen ="carbon.png"
	method llego(alguien) {
		alguien.bando().aniadirMateriales(50)
		game.removeVisual(self)
	}
	
	
	method seEncuentraCon(capo) {
		capo.bando().aniadirMateriales(50)
	}
}

class ViejoSabio {
	const property puntosHechiceria = 1
	
	//wollok game
	const property nombre ="Viejo Sabio"
	const property imagen ="viejoSabio.png"
	method llego(alguien) {
		alguien.incLuchaBase(1)
		game.removeVisual(self)	
		alguien.incHechiceriaBase(1)
	}
	
	
	method seEncuentraCon(capo) {
		capo.incLuchaBase(1)
		capo.incHechiceriaBase(puntosHechiceria)
	}
}

class Neblina {
	const property enNeblinaHay = []
	
	//wollok game
	const property nombre = "Neblina"
	const property imagen = "neblina.png"
	
	method llego(alguien) {
		enNeblinaHay.forEach({cosa => cosa.llego(alguien)})
		game.removeVisual(self)
	}
}