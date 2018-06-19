import capos.*
//------Artefactos------

class Artefacto{
	
	method hechiceria(capo){
		return 0
	}
	method lucha(capo){
		return 0
	}
	
	method poderArtefacto(capo){
		return self.lucha(capo) + self.hechiceria(capo)
	}
	method llego(alguien) {
//		// TODO GRAVE: Evitar precálculos, esta estrategia no funciona.
//		// TODO No respeta el enunciado, está modificando la base, no es lo pedido.

		alguien.obtenerArtefacto(self)
		game.removeVisual(self)	
	}
}



object artefactoCero inherits Artefacto{
	
}

object espadaDelDestino inherits Artefacto{
	//wollok game - tp2
	const property nombre ="Espada del Destino"
	const property imagen ="espada.png"
	
	
	override method lucha(capo){
		return 3
	}

}
object libroDeHechizos inherits Artefacto{
	//wollok game - tp2
	const property nombre ="Libro de Hechizos"
	const property imagen ="libro.png"

	override method hechiceria(capo){
		return capo.hechiceriaBase()
	}

}
object collarDivino inherits Artefacto{
	//wollok game - tp2
	const property nombre ="Collar Divino"
	const property imagen ="collar.png"

	override method hechiceria(capo){
		return 1
	}
	override method lucha(capo){
		return 1
	}
	
}



//------Artefactos avanzados------


object espejoFantastico inherits Artefacto{
	//wollok game - tp2
	const property nombre ="Espejo Fantastico"
	const property imagen ="espejo.png"

	
	override method hechiceria(capo){
		return (self.mejorArtefacto(capo)).hechiceria(capo)
	}
	override method lucha(capo){
		return (self.mejorArtefacto(capo)).lucha(capo)
	}

	method mejorArtefacto(capo){
		return if (self.artefactosSinEspejo(capo).isEmpty())
			{artefactoCero}
		else 
			{self.artefactosSinEspejo(capo).max({_artefacto=>_artefacto.poderArtefacto(capo)})}
	}
	method artefactosSinEspejo(capo){
		var _artefactos = capo.artefactos().copy()
		_artefactos.remove(self)
		return _artefactos
	}
}

class Armadura inherits Artefacto{
	var refuerzo= ninguna
	
	//wollok game
	const property nombre ="Armadura"
	const property imagen ="armadura.png"

	
	method nuevoRefuerzo(_refuerzo){
		refuerzo=_refuerzo
	}
	override method hechiceria(capo){
		return refuerzo.hechiceria(capo.hechiceriaBase())
	}
	override method lucha(capo){
		return 2 + refuerzo.lucha()
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
