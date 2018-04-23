//------Artefactos------

object artefactoCero{
	method puntosDeHechiceria(capo){
		return 0
	}
	method puntosDeLucha(capo){
		return 0
	}
	
	// TODO Código repetido
	method sumaDeLuchaYHechiceria(capo){
		return self.puntosDeLucha(capo) + self.puntosDeHechiceria(capo)
	}
}
object espadaDelDestino{
	method puntosDeHechiceria(capo){
		return 0
	}
	method puntosDeLucha(capo){
		return 3
	}
	method sumaDeLuchaYHechiceria(capo){
		return self.puntosDeLucha(capo) + self.puntosDeHechiceria(capo)
	}
}
object libroDeHechizos{
	method puntosDeHechiceria(capo){
		return capo.hechiceriaBase()
	}
	method puntosDeLucha(capo){
		return 0
	}
	method sumaDeLuchaYHechiceria(capo){
		return self.puntosDeLucha(capo) + self.puntosDeHechiceria(capo)
	}
}
object collarDivino{
	method puntosDeHechiceria(capo){
		return 1
	}
	method puntosDeLucha(capo){
		return 1
	}
	method sumaDeLuchaYHechiceria(capo){
		return self.puntosDeLucha(capo) + self.puntosDeHechiceria(capo)
	}	
}

//------Artefactos avanzados------

object espejoFantastico{
	method puntosDeHechiceria(capo){
		return (capo.mejorArtefacto()).puntosDeHechiceria(capo)
	}
	method puntosDeLucha(capo){
		return (capo.mejorArtefacto()).puntosDeLucha(capo)
	}
	method sumaDeLuchaYHechiceria(capo){
		return self.puntosDeLucha(capo) + self.puntosDeHechiceria(capo)
	}
}

object armadura{
	var refuerzo= ninguna
	
	method nuevoRefuerzo(_refuerzo){
		refuerzo=_refuerzo
	}
	method puntosDeHechiceria(capo){
		return refuerzo.hechiceria(capo.hechiceriaBase())
	}
	method puntosDeLucha(capo){
		return 2 + refuerzo.lucha()
	}
	method sumaDeLuchaYHechiceria(capo){
		return self.puntosDeLucha(capo) + self.puntosDeHechiceria(capo)
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
