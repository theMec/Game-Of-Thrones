class Conspiracion{
	var integrantes=#{}
	var objetivo
	
	constructor(unosI,unO){
		integrantes=unosI
		if(objetivo.esPeligroso()){
		objetivo=unO}else{
			error.throwWithMenssage("no es peligroso")
		}	
	
	}
	
	method traidores(){
		objetivo.traicion(integrantes)
		
	}
	
	method objetivoCumplido(){
		return !objetivo.estaVivo()|| !objetivo.esPeligroso()
	}
	
		method ejecutarAtaques(){
		integrantes.forEach({integrante => integrante.atacar(objetivo)})
	}
}
