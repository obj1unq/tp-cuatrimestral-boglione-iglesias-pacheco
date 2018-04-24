//------Elementos------

class CofrecitoDeOro {
	const property oro = 100
	
	method seEncuentraCon(capo) {
		capo.bando().aniadirTesoro(oro)
	}
}

class CumuloDeCarbon {
	method seEncuentraCon(capo) {
		capo.bando().aniadirMateriales(50)
	}
}

class ViejoSabio {
	const property puntosHechiceria = 1
	
	method seEncuentraCon(capo) {
		capo.incLuchaBase(1)
		capo.incHechiceriaBase(puntosHechiceria)
	}
}

/* 
object cofrecitoDeOro {
	method seEncuentraCon(capo) {
		capo.bando().aniadirTesoro(100)
	}
}

object cumuloDeCarbon {
	method seEncuentraCon(capo) {
		capo.bando().aniadirMateriales(50)
	}
}

object viejoSabio {
	method seEncuentraCon(capo) {
		capo.incLuchaBase()
		capo.incHechiceriaBase()
	}
}
*/
