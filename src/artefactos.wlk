//------Artefactos------

object artefactoCero{
	method puntosDeHechiceria(objeto){
		return 0
	}
	method puntosDeLucha(objeto){
		return 0
	}
	
	// TODO Código repetido
	method sumaDeLuchaYHechiceria(objeto){
		return self.puntosDeLucha(objeto) + self.puntosDeHechiceria(objeto)
	}
}
object espadaDelDestino{
	method puntosDeHechiceria(objeto){
		return 0
	}
	method puntosDeLucha(objeto){
		return 3
	}
	method sumaDeLuchaYHechiceria(objeto){
		return self.puntosDeLucha(objeto) + self.puntosDeHechiceria(objeto)
	}
}
object libroDeHechizos{
	// TODO ¿Por qué el nombre es "objeto" y no "capo"?
	method puntosDeHechiceria(objeto){
		return objeto.hechiceriaBase()
	}
	method puntosDeLucha(objeto){
		return 0
	}
	method sumaDeLuchaYHechiceria(objeto){
		return self.puntosDeLucha(objeto) + self.puntosDeHechiceria(objeto)
	}
}
object collarDivino{
	method puntosDeHechiceria(objeto){
		return 1
	}
	method puntosDeLucha(objeto){
		return 1
	}
	method sumaDeLuchaYHechiceria(objeto){
		return self.puntosDeLucha(objeto) + self.puntosDeHechiceria(objeto)
	}	
}

//------Artefactos avanzados------

object espejoFantastico{
	method puntosDeHechiceria(objeto){
		return (objeto.mejorArtefacto()).puntosDeHechiceria(objeto)
	}
	method puntosDeLucha(objeto){
		return (objeto.mejorArtefacto()).puntosDeLucha(objeto)
	}
	method sumaDeLuchaYHechiceria(objeto){
		return self.puntosDeLucha(objeto) + self.puntosDeHechiceria(objeto)
	}
}

object armadura{
	var refuerzo= ninguna
	
	method nuevoRefuerzo(_refuerzo){
		refuerzo=_refuerzo
	}
	method puntosDeHechiceria(objeto){
		return refuerzo.hechiceria(objeto.hechiceriaBase())
	}
	method puntosDeLucha(objeto){
		return 2 + refuerzo.lucha()
	}
	method sumaDeLuchaYHechiceria(objeto){
		return self.puntosDeLucha(objeto) + self.puntosDeHechiceria(objeto)
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
