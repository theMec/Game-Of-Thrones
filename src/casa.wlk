

class Casa{
var oro
var integrantes=#{}

constructor(unO,unosI){
	oro=unO
	integrantes=unosI}
	
method esRica(){
return oro>1000
}

method patrimonio(personaje){
return oro/integrantes	
}

method integrantes(){
	return integrantes
}

method gastar(porcentaje){
	oro -= oro*porcentaje/100
}
}


class Stark inherits Casa{

	
	method condicionMatrimonio(persona,pretendiente){ 
	return persona.casa() != pretendiente.casa()
}}

class Lannister inherits Casa{
	
	method condicionMatrimonio(persona,pretendiente){
		return persona.conyugues().isEmpty()
	}
}

class Noche inherits Casa{
	method condicionMatrimonio(persona,pretendiente){
		return false
	}
}




