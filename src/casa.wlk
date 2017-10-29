

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
	
	method puedenCasarse(persona1,persona2){
		return persona1.condicionMatrimonio(persona2)&&persona2.puedeCasarse(persona1)
	}
	
}


object stark inherits Casa{

	method esStark(pretendiente){
		return integrantes.contains(pretendiente)
	}
	
	method condicionMatrimonio(persona,pretendiente){ 
		return self.esStark(pretendiente)
}}

object lannister inherits Casa{
	
	method condicionMatrimonio(persona,pretendiente){
		return persona.esSoltero()
	}
}

object noche inherits Casa{
	method condicionMatrimonio(persona,pretendiente){
		return false
	}
}




