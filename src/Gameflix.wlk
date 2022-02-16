/** First Wollok example */
object gameflix {
	const libreria = #{}
	var usuarios = #{}
	
	method filtrarJuegosPorCategoria(unaCategoria){
		return self.todosLosJuegosDeLaColeccion().filter({juego => juego.categoria() == unaCategoria}) 
	}
	
	method buscarJuegoPorNombre(nombreDeUnJuego){
		return self.todosLosJuegosDeLaColeccion().find({juego => juego.nombre() == nombreDeUnJuego}) 
	}
	
	method recomendarJuegoAlAzar(){
		return self.todosLosJuegosDeLaColeccion().anyOne()
	}
	
	method todosLosJuegosDeLaColeccion() {
		return libreria
	}
	
	
	method juegosBaratos() {
		return self.todosLosJuegosDeLaColeccion().filter({juego => juego.esBarato()})
	}
	
	method juegosDemos() {
		return self.filtrarJuegosPorCategoria("Demo")
	}
	
	method juegosInfantiles() {
		return self.filtrarJuegosPorCategoria("Infantil")
	}
	
	method cobrarSuscripcionAUsuarios(){
		usuarios.forEach({unUsuario => unUsuario.pagarSuscripcion()})
	}
}
