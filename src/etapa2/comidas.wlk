import pepita.*

object alpiste {
	method energiaPorGramo() { return 4 }
}

object mondongo {
	method energiaPorGramo() { return 100 }
}

// comida que esta fallada
object bigMac {
	method energiaPorGramo() { return 2 }
}

/*
 * el alcaucil da 20 joules por gramo
 */ 
object alcaucil {
	method energiaPorGramo() { return 20 }
}

/*
 * el sorgo da 9 joules por gramo
 */ 
object sorgo {
	method energiaPorGramo() { return 9 }
}

// despues, agregar mijo y canelones
object mijo {
	var estaMojado = false
	
	
	method energiaPorGramo() { ///este metodo tiene que responder un numero
	      if (estaMojado) { return 20 //si esta seco
	        } else { return 15 } //si esta mojado
	        }
	        
	method mojarse() { estaMojado= true } //este metodo no responde, hace
	                                      //¿que hace? recordar que esta mojado
	
	
	method secarse() { estaMojado= false }
	}

object canelones {
	var tieneSalsa= true
	var tieneQueso= false
	
	method energiaPorGramo()
	{ if (tieneSalsa and not tieneQueso) {
		 return 25 
	} if (tieneQueso and not tieneSalsa) {
		return 27
	} 
	if (tieneQueso && tieneSalsa) { return 32
	} else { return 20 }

	}
	
	method Salsa() {tieneSalsa= true}
	method Queso() {tieneQueso= true}
	
	method SacarSalsa() {tieneSalsa= false}
	method SacarQueso() {tieneQueso= false}
}


