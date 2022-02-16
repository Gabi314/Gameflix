import Suscripcion.*
import Juegos.*

class Usuario {
	var suscripcion 
	var plata = 0
	
	method plata() {
		return plata
	}
	
	method actualizarSuscripcion(nuevaSuscripcion) {
		suscripcion = nuevaSuscripcion
	}
	
	method pagarSuscripcion(){
		if ( self.plata() >= suscripcion.precio()) {
			plata -= suscripcion.precio()
		}
		else {
			self.actualizarSuscripcion(suscripcionPrueba)
		}
	}
	
	method jugarUnJuegoEspecifico(unJuego) {
			if (self.puedeJugarA(unJuego)){
			unJuego.afectarA(self)
			}
			else {
				self.error("El usuario no tiene acceso a este juego")
				}
		}
		
		
	method puedeJugarA(unJuego) {
		return suscripcion.juegosQueElUsuarioPuedeJugar().contains(unJuego)	
	
	}
	
	
}
