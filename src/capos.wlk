import bandos.*
import artefactos.*
import elementos.*

//------Capos------

object rolando{
	var luchaBase = 3
	var hechiceriaBase = 1
	var artefactos = #{}
	var bando = bandoDelSur
	
	method incValorBaseDeLucha() {
		luchaBase += 1
	}
	method incValorBaseDeHechiceria() {
		hechiceriaBase += 1
	} 
	
	method obtenerArtefacto(_artefacto){
		artefactos.add(_artefacto)
	}
	method puntosDeLuchaArtefactos() = artefactos.sum({_artefacto => _artefacto.puntosDeLucha(self)})
	method puntosDeHechiceriaArtefactos() = artefactos.sum({_artefacto => _artefacto.puntosDeHechiceria(self)})
	
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
		method cambiarBando(_bando){ //Comienza siendo del sur
			bando = _bando
		}
	method encontrarElemento(elemento) {
		bando.aniadirTesoro(elemento.tesoro())
		bando.aniadirMateriales(elemento.materiales())
		
		// FIXME Este código es muy específico del viejo sabio y no está aprovechando bien el polimorfismo.
		luchaBase += elemento.puntosDeLucha()
		hechiceriaBase += elemento.puntosDeHechiceria()
	}
	
	// TODO Corregir nombre, es confuso. ¿Qué significa "en uso"? ¿Hay artefactos que no están en uso?
	method artefactosEnUso(){
		return artefactos
	}

	// TODO Esta responsabilidad le caería mejor al espejo y se evitaría que rolando conozca a un elemento específico.
	method mejorArtefacto(){
		return if (self.artefactosSinEspejo().isEmpty())
				{ artefactoCero}
				else 
					{self.artefactosSinEspejo().max({_artefacto=>_artefacto.sumaDeLuchaYHechiceria(self)})}
	}

	// TODO Esta responsabilidad le caería mejor al espejo y se evitaría que rolando conozca a un elemento específico.
	method artefactosSinEspejo(){
		var _artefactosEnUso = self.artefactosEnUso().copy()
		_artefactosEnUso.remove(espejoFantastico)
		return _artefactosEnUso
	}
}