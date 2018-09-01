object roque {
	
	var property posicion = game.at(5,0)
	var enMano = null
	
	method queTenes() {return enMano}
	
	method imagen() = "jugador.png"
	
	method soltar(){
		game.addVisualIn(enMano, game.at(1.randomUpTo(9),6.randomUpTo(9)))
		enMano = null
	} 
	
	method levantar(algo){
		if (enMano != null) {
			self.soltar()
		}
		enMano = algo
		game.removeVisual(algo)
	}
}
