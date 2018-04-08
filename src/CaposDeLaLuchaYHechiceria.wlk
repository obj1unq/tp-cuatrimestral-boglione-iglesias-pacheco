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
	method puntosDeLuchaArtefactos() = artefactos.sum({_Artefacto => _Artefacto.puntosDeLucha(self)})
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
	
	method encontrarElemento(elemento) {
		bandoDelSur.aniadirTesoro(elemento.tesoro())
		bandoDelSur.aniadirMateriales(elemento.materiales())
		luchaBase += elemento.puntosDeLucha()
		hechiceriaBase += elemento.puntosDeHechiceria()
	}
	method artefactosEnUso(){
		return artefactos
	}
	method mejorArtefacto(){
		return if (!(self.artefactosEnUso()).remove(espejoFantastico).isEmpty())
				{(self.artefactosEnUso()).remove(espejoFantastico).max({_artefacto=>self.sumaDeLuchaYHechiceria(_artefacto)})}
				else{ artefactoCero}
	}
	method sumaDeLuchaYHechiceria(objeto){
		return objeto.puntosDeLucha(objeto) + objeto.puntosDeHechiceria(objeto)
	}
}

//------Bandos------

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

//------Artefactos------
object artefactoCero{
	method puntosDeHechiceria(objeto){
		return 0
	}
	method puntosDeLucha(objeto){
		return 0
	}
}
object espadaDelDestino{
	method puntosDeHechiceria(objeto){
		return 0
	}
	method puntosDeLucha(objeto){
		return 3
	}
}
object libroDeHechizos{
	method puntosDeHechiceria(objeto){
		return objeto.hechiceriaBase()
	}
	method puntosDeLucha(objeto){
		return 0
	}
}
object collarDivino{
	method puntosDeHechiceria(objeto){
		return 1
	}
	method puntosDeLucha(objeto){
		return 1
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

//------Elementos------

object cofrecitoDeOro {
	method tesoro() = 100
	method materiales() = 0
	method puntosDeLucha() = 0
	method puntosDeHechiceria() = 0
}

object cumuloDeCarbon {
	method tesoro() = 0
	method materiales() = 50
	method puntosDeLucha() = 0
	method puntosDeHechiceria() = 0
}

object viejoSabio {
	method tesoro() = 0
	method materiales() = 0
	method puntosDeLucha() = 1
	method puntosDeHechiceria() = 1
}