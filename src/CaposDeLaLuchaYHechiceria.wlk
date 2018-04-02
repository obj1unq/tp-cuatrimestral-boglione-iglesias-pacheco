/* parte 1 */
object rolando{
	const luchaBase = 3
	const hechiceriaBase=1
	var artefactos= []
	
	
	method incValorBaseDeLucha() = luchaBase + 1
	method incValorBaseDeHechiceria() = hechiceriaBase + 1
	method obtenerArtefacto(_Artefacto){
		artefactos.add(_Artefacto)
	}
	method puntosDeLuchaArtefacto()= _Artefacto.puntosDeLucha()
	method puntosDeHechiceriaArtefacto()= _Artefacto.puntosDeHechiceria(self)
	
	method luchaBase(){
		return luchaBase
	}
	method hechiceriaBase(){
		return hechiceriaBase
	}
	method puntosDeLuchaTotal(){
		return luchaBase +  artefactos.sum([_Artefacto => _Artefacto.puntosDeLucha()])
	}
	method puntosDeHechiceriaTotal(){
		return hechiceriaBase+self.puntosDeHechiceriaArtefacto()
	}
}

object espadaDelDestino{
	method puntosDeHechiceria(objeto){
		return 0
	}
	method puntosDeLucha(){
		return 0
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
object armadura{
	var refuerzo= ninguna
	
	method nuevoRefuerzo(_refuerzo){
		refuerzo=_refuerzo
	}
	method puntosDeHechiceria(objeto){
		return refuerzo.hechiceria()
	}
	method puntosDeLucha(objeto){
		return 2 + refuerzo.lucha()
	}
}

object cotaDeMalla{
	method lucha(){
		return 1
	}
	method hechiceria(){
		return 0
	}
}
object bendicion{
	method lucha(){
		return 0
	}
	method hechiceria(){
		return 1
	}
}
object hechizo{
	method lucha(){
		return 0
	}
	method hechiceria(){
		return 0
	}
}
object ninguna{
	method lucha(){
		return 0
	}
	method hechiceria(){
		return 0
	}
}
