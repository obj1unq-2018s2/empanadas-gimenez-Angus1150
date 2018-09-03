object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var totalCobrado = 0
	method sueldo() { 
		return sueldo
	}
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	
	method cobrarSueldo(){
		totalCobrado += sueldo
	}
	method totalCobrado(){
		return totalCobrado
	}
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var deuda = 0
	var dinero =0
	
	method setEmpVendidas(x){
		cantidadEmpanadasVendidas= x
	}
	method gastar(cuanto){
		if(dinero>=cuanto){
			dinero-=cuanto
		}
		else{
			deuda+=cuanto - dinero
			dinero=0
		}
	}
	
	method totalDinero(){ return dinero}

	method totalDeuda(){ return deuda}
	
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	
	method cobrarSueldo(){
		if(self.sueldo()>=deuda){
			dinero= self.sueldo()-deuda
			deuda=0
		}else{
			deuda-=self.sueldo()
		}
	}
}

object galvan {
	var dinero = 300000
	method dinero() { 
		return dinero
	}
	method pagarA( empleado ) { 
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}
