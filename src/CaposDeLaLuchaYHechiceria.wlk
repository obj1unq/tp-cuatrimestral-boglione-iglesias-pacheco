/* parte 1 */

//------Capos------

object rolando{
	var luchaBase = 3
	var hechiceriaBase = 1
	var artefactos = #{}
	
	
	method incValorBaseDeLucha() {
		luchaBase += 1
	}
	method incValorBaseDeHechiceria() {
		hechiceriaBase += 1
	}
	method obtenerArtefacto(_Artefacto){
		artefactos.add(_Artefacto)
	}
	method puntosDeLuchaArtefactos() = artefactos.sum({_Artefacto => _Artefacto.puntosDeLucha()})
	method puntosDeHechiceriaArtefactos() = artefactos.sum({_Artefacto => _Artefacto.puntosDeHechiceria(self)})
	
	method luchaBase(){
		return luchaBase
	}
	method hechiceriaBase(){
		return hechiceriaBase
	}
	method puntosDeLuchaTotal(){
		return luchaBase +  self.puntosDeLuchaArtefactos()
	}
	method puntosDeHechiceriaTotal(){
		return hechiceriaBase + self.puntosDeHechiceriaArtefactos()
	}
}

//------Artefactos------

object espadaDelDestino{
	method puntosDeHechiceria(objeto){
		return 0
	}
	method puntosDeLucha(){
		return 3
	}
}
object libroDeHechizos{
	method puntosDeHechiceria(objeto){
		return objeto.hechiceriaBase()
	}
	method puntosDeLucha(){
		return 0
	}
}
object collarDivino{
	method puntosDeHechiceria(objeto){
		return 1
	}
	method puntosDeLucha(){
		return 1
	}	
}

//------Artefactos avanzados------

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
