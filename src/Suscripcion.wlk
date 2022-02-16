import Gameflix.*

object suscripcionPremium{
const precio = 50 	

	method juegosQueElUsuarioPuedeJugar() {
		return gameflix.todosLosJuegosDeLaColeccion()
	}
	
	method precio() {
		return precio
	}

}

object suscripcionBase{
const precio = 25 	

	method juegosQueElUsuarioPuedeJugar() {
		return gameflix.juegosBaratos()
	}
	
	method precio() {
		return precio
	}
}

object suscripcionPrueba{
const precio = 0

	method juegosQueElUsuarioPuedeJugar() {
		return gameflix.juegosDemos()
	}
	
	method precio() {
		return precio
	}

}

object suscripcionInfantil{
const precio = 10

	method juegosQueElUsuarioPuedeJugar() {
		return gameflix.juegosInfantiles() 
	}
	
	method precio() {
		return precio
	}

}