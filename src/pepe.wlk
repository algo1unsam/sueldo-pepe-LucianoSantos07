object pepe {
	var faltas=0
	var categoria
	var tipoBonoResultado
	var tipoBonoPresentismo
	
	method categoria(_categoria){
		categoria= _categoria	
	}
method tipoBonoPresentismo(_BonoPresentismo){
	tipoBonoPresentismo = _BonoPresentismo
}
method tipoBonoResultado(_BonoResultado){
	tipoBonoResultado = _BonoResultado

}
method cantidadDeFaltas(_faltas){
	faltas=_faltas 
}

method sueldo(){
	return categoria.neto() + tipoBonoPresentismo.valorBono(faltas)+ tipoBonoResultado.valorBonoR(categoria.neto())
}

}
object cadete {
	method neto(){
		return 1500
	}
}
object gerente{
	method neto(){
		return 1000
	}
}
object bonoPresentismoFijo{
	method valorBono(cantidadDeFaltas){
		if(cantidadDeFaltas == 0){
			return 100
		}
		else if (cantidadDeFaltas == 1){
			return 50
		}
		else{
			return 0
		}
		
	}
	
}
object bonoResultadoNada {
	method valorBonoR(){
		return 0
		
	}
}
object bonoResultadoDiezPorciento{
	method valorBonoR(neto){
		return neto * 0.1
	}
}
object bonoResultadoFijo{
	method valorBonoR(cantidad){
		return 80
	}
}