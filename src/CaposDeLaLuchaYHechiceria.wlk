object rolando{
	const luchaBase = 3
	const hechiceriaBase=1
	var artefacto 
	
	
	method incValorBaseDeLucha() = luchaBase + 1
	method incValorBaseDeHechiceria() = hechiceriaBase + 1
	method obtenerArtefacto(_Artefacto){
		artefacto = _Artefacto
	}
	method puntosDeLuchaArtefacto()= artefacto.puntosDeLucha()
	method puntosDeHechiceriaArtefacto()=artefacto.puntosDeHechiceria(self)
	
	method luchaBase(){
		return luchaBase
	}
	method hechiceriaBase(){
		return hechiceriaBase
	}
	method puntosDeLuchaTotal(){
		return luchaBase + self.puntosDeLuchaArtefacto()
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