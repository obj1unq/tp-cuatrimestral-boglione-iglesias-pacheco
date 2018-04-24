//------Artefactos------

object artefactoCero{
	method hechiceria(capo){
		return 0
	}
	method lucha(capo){
		return 0
	}
	
	method sumaDeLuchaYHechiceria(capo){
		return self.lucha(capo) + self.hechiceria(capo)
	}
}

object espadaDelDestino{
	const property nombre ="Espada del Destino"
	const property imagen ="espada.png"
	
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
object libroDeHechizos{
	const property nombre ="Libro de Hechizos"
	const property imagen ="libro.png"
	
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
object collarDivino{
	const property nombre ="Collar Divino"
	const property imagen ="collar.png"
	
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


object espejoFantastico{
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

class Armadura{
	var refuerzo= ninguna
	
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

object cotaDeMalla{
	method lucha(){
		return 1
	}
	method hechiceria(puntos){
		return 0
	}
}
object bendicion{
	method lucha(){
		return 0
	}
	method hechiceria(puntos){
		return 1
	}
}
object hechizo{
	method lucha(){
		return 0
	}
	method hechiceria(puntos){
		return if(puntos>3){2} else{0}
	}
}
object ninguna{
	method lucha(){
		return 0
	}
	method hechiceria(puntos){
		return 0
	}
}
