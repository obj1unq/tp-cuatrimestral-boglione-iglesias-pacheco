//------Artefactos------

object artefactoCero{
	method hechiceria(capo){
		return 0
	}
	method lucha(capo){
		return 0
	}
	
	// TODO Código repetido
	method sumaDeLuchaYHechiceria(capo){
		return self.lucha(capo) + self.hechiceria(capo)
	}
}
object espadaDelDestino{
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
		return (capo.mejorArtefacto()).hechiceria(capo)
	}
	method lucha(capo){
		return (capo.mejorArtefacto()).lucha(capo)
	}
	method sumaDeLuchaYHechiceria(capo){
		return self.lucha(capo) + self.hechiceria(capo)
	}
}

object armadura{
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
