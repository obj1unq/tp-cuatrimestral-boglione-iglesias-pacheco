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
/* 
object bandoDelSur {
	var tesoro = 0
	var reservaDeMateriales = 0
	
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
 
*/