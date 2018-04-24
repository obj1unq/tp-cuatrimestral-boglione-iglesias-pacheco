//------Bandos------

class Bando {
	var property tesoro = null
	var property reservaDeMateriales = null
	
	method aniadirTesoro(cant) {
		tesoro += cant
	}
	
	method aniadirMateriales(cant) {
		reservaDeMateriales += cant
	}
	
	method tesoro() {
		return tesoro
	}
	
	method reservaDeMateriales() {
		return reservaDeMateriales
	}
}
