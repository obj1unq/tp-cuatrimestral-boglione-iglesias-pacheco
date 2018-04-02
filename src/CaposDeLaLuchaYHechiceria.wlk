//------Capos------

object rolando {
	var luchaBase = 3
	var hechiceriaBase = 1
	var lucha = luchaBase
	var hechiceria = hechiceriaBase
	//la idea seria utilizar luchaBase y hechiceriaBase para tener registro de los valores originales, y modificar lucha y hechiceria usando los artefactos
	
	method incrementarLucha() {
		luchaBase += 1
		lucha += 1
	}
	method incrementarHechiceria() {
		hechiceriaBase += 1
		hechiceria += 1
	}
	
	method lucha() {
		return lucha
	}
	method hechiceria() {
		return hechiceria
	}
}

//------Artefactos------

object espadaDelDestino {
	
}

object libroDeHechizos {
	
}

object collarDivino {
	
}