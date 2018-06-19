import capos.*
//------Artefactos------

object artefactoCero {
	method hechiceria(capo){
		return 0
	}
	method lucha(capo){
		return 0
	}
	
	// TODO Este código está repetido en todos los capos. ===> solucionado?
	method sumaDeLuchaYHechiceria(capo){
		return self.lucha(capo) + self.hechiceria(capo)
	}
}

object espadaDelDestino {
	//wollok game - tp2
	const property nombre ="Espada del Destino"
	const property imagen ="espada.png"
	method llego(alguien) {
//		// TODO GRAVE: Evitar precálculos, esta estrategia no funciona.
//		// TODO No respeta el enunciado, está modificando la base, no es lo pedido.
//		alguien.incLuchaBase(self.lucha(alguien))
//		alguien.incHechiceriaBase(self.hechiceria(alguien))
		alguien.obtenerArtefacto(self)
		game.removeVisual(self)	
	}
	
	method hechiceria(capo){
		return 0
	}
	method lucha(capo){
		return 3
	}
	method sumaDeLuchaYHechiceria(capo){
		return self.lucha(capo) + self.hechiceria(capo)
	}
}
object libroDeHechizos {
	//wollok game - tp2
	const property nombre ="Libro de Hechizos"
	const property imagen ="libro.png"
	method llego(alguien) {
//		alguien.incLuchaBase(self.lucha(alguien))
//		alguien.incHechiceriaBase(self.hechiceria(alguien))
		alguien.obtenerArtefacto(self)
		game.removeVisual(self)	
	}
	
	
	method hechiceria(capo){
		return capo.hechiceriaBase()
	}
	method lucha(capo){
		return 0
	}
	method sumaDeLuchaYHechiceria(capo){
		return self.lucha(capo) + self.hechiceria(capo)
	}
}
object collarDivino {
	//wollok game - tp2
	const property nombre ="Collar Divino"
	const property imagen ="collar.png"
	method llego(alguien) {
//		alguien.incLuchaBase(self.lucha(alguien))
//		alguien.incHechiceriaBase(self.hechiceria(alguien))
		alguien.obtenerArtefacto(self)
		game.removeVisual(self)	
	}
	method hechiceria(capo){
		return 1
	}
	method lucha(capo){
		return 1
	}
	method sumaDeLuchaYHechiceria(capo){
		return self.lucha(capo) + self.hechiceria(capo)
	}	
}



//------Artefactos avanzados------


object espejoFantastico {
	//wollok game - tp2
	const property nombre ="Espejo Fantastico"
	const property imagen ="espejo.png"
	method llego(alguien) {
//		alguien.incLuchaBase(self.lucha(alguien))
//		alguien.incHechiceriaBase(self.hechiceria(alguien))
		alguien.obtenerArtefacto(self)
		game.removeVisual(self)	
	}
	
	method hechiceria(capo){
		return (self.mejorArtefacto(capo)).hechiceria(capo)
	}
	method lucha(capo){
		return (self.mejorArtefacto(capo)).lucha(capo)
	}
	method sumaDeLuchaYHechiceria(capo){
		return self.lucha(capo) + self.hechiceria(capo)
	}
	
	method mejorArtefacto(capo){
		return if (self.artefactosSinEspejo(capo).isEmpty())
			{artefactoCero}
		else 
			{self.artefactosSinEspejo(capo).max({_artefacto=>_artefacto.sumaDeLuchaYHechiceria(capo)})}
	}
	method artefactosSinEspejo(capo){
		var _artefactos = capo.artefactos().copy()
		_artefactos.remove(self)
		return _artefactos
	}
}

class Armadura {
	var refuerzo= ninguna
	
	//wollok game
	const property nombre ="Armadura"
	const property imagen ="armadura.png"
	method llego(alguien) {
//		alguien.incLuchaBase(self.lucha(alguien))
//		alguien.incHechiceriaBase(self.hechiceria(alguien))
		alguien.obtenerArtefacto(self)
		game.removeVisual(self)	
	}
	
	
	method nuevoRefuerzo(_refuerzo){
		refuerzo=_refuerzo
	}
	method hechiceria(capo){
		return refuerzo.hechiceria(capo.hechiceriaBase())
	}
	method lucha(capo){
		return 2 + refuerzo.lucha()
	}
	method sumaDeLuchaYHechiceria(capo){
		return self.lucha(capo) + self.hechiceria(capo)
	}
}

class Refuerzos{
	method lucha(){
		return 0
	}
	method hechiceria(puntos){
		return 0
	}
}

object cotaDeMalla inherits Refuerzos{
	override method lucha(){
		return 1
	}
	
}
object bendicion inherits Refuerzos{
	
	override method hechiceria(puntos){
		return 1
	}
}
object hechizo inherits Refuerzos{
	
	override method hechiceria(puntos){
		return if(puntos>3){2} else{0}
	}
}
object ninguna inherits Refuerzos{
	
	
}
