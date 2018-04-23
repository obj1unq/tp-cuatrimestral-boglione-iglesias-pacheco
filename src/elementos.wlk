//------Elementos------

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