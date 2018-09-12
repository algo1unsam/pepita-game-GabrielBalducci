import ciudades.*
import comidas.*
import roque.*

object pepita {
	var property energia = 100
	var property ciudad = null
	var property posicion = game.at(3,3)
	
	// TODO y las otras imagenes?
	method imagen() = "pepita.png"

	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
		}
		// TODO mensaje si ya está en esa ciudad
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		// TODO acá falta la valicación de si puede volar hasta ahí
		energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
		self.posicion(nuevaPosicion)
	}
	method teEncontro(alguien){
		if (alguien.queTenes() != null){
			self.come(alguien.queTenes())
			alguien.soltar()
		}
	}
}
