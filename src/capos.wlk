import bandos.*
import artefactos.*
import elementos.*
//nuevo
//------Capos------

class Capo {

	var property luchaBase = null
	var property hechiceriaBase = null
	var property artefactos = null
	var property bando = null

	method incLuchaBase() {
		luchaBase += 1
	}

	method incHechiceriaBase() {
		hechiceriaBase += 1
	}

	method obtenerArtefacto(_artefacto) {
		artefactos.add(_artefacto)
	}

	method luchaArtefactos() = artefactos.sum({ _artefacto => _artefacto.lucha(self) })

	method hechiceriaArtefactos() = artefactos.sum({ _artefacto => _artefacto.hechiceria(self) })

	method luchaBase() {
		return luchaBase
	}

	method hechiceriaBase() {
		return hechiceriaBase
	}

	method luchaTotal() {
		return luchaBase + self.luchaArtefactos()
	}

	method hechiceriaTotal() {
		return hechiceriaBase + self.hechiceriaArtefactos()
	}

	method cambiarBando(_bando) { // Comienza siendo del sur
		bando = _bando
	}

	method bando() {
		return bando
	}

	method encontrarElemento(elemento) {
		elemento.seEncuentraCon(self)
	}

	method artefactos() {
		return artefactos
	}

	//-----------------TP 2-------------------
	method esAmigoDe(capo) {
		return bando == capo.bando() 			
	} 
	
}

/* 
 * object rolando{
 * 	var luchaBase = 3
 * 	var hechiceriaBase = 1
 * 	var artefactos = #{}
 * 	var bando = bandoDelSur
 * 	
 * 	method incLuchaBase() {
 * 		luchaBase += 1
 * 	}
 * 	method incHechiceriaBase() {
 * 		hechiceriaBase += 1
 * 	} 
 * 	
 * 	method obtenerArtefacto(_artefacto){
 * 		artefactos.add(_artefacto)
 * 	}
 * 	
 * 	method luchaArtefactos() = artefactos.sum({_artefacto => _artefacto.lucha(self)})
 * 	method hechiceriaArtefactos() = artefactos.sum({_artefacto => _artefacto.hechiceria(self)})
 * 	
 * 	method luchaBase(){
 * 		return luchaBase
 * 	}
 * 	
 * 	method hechiceriaBase(){
 * 		return hechiceriaBase
 * 	}
 * 	
 * 	method luchaTotal(){
 * 		return luchaBase +  self.luchaArtefactos()
 * 	}
 * 	
 * 	method hechiceriaTotal(){
 * 		return hechiceriaBase + self.hechiceriaArtefactos()
 * 	}
 * 	
 * 	method cambiarBando(_bando){ //Comienza siendo del sur
 * 		bando = _bando
 * 	}
 * 	method bando() {
 * 		return bando
 * 	}
 * 	
 * 	method encontrarElemento(elemento) {
 * 		elemento.seEncuentraCon(self)
 * 	}
 * 	
 * 	method artefactos(){
 * 		return artefactos
 * 	}

 * 	// TODO Esta responsabilidad le caería mejor al espejo y se evitaría que rolando conozca a un elemento específico.
 * //	method mejorArtefacto(){
 * //		return if (self.artefactosSinEspejo().isEmpty())
 * //				{artefactoCero}
 * //				else 
 * //					{self.artefactosSinEspejo().max({_artefacto=>_artefacto.sumaDeLuchaYHechiceria(self)})}
 * //	}

 * 	// TODO Esta responsabilidad le caería mejor al espejo y se evitaría que rolando conozca a un elemento específico.
 * //	method artefactosSinEspejo(){
 * //		var _artefactos = self.artefactos().copy()
 * //		_artefactos.remove(espejoFantastico)
 * //		return _artefactos
 * //	}
 * }

*/