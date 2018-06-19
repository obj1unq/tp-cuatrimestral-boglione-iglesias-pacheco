//------Bandos------

class Bando {
	// TODO No están usando bien las properties. ===> Solucionado.
	var property tesoro = null
	var property reservaDeMateriales = null
	
	method aniadirTesoro(cant) {
		tesoro += cant
	}
	
	method aniadirMateriales(cant) {
		reservaDeMateriales += cant
	}
	
}
