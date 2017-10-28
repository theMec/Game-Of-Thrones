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
		integrantes.filter({personaje=>personaje.aliados().contains(objetivo)})
	}
	
	method objetivoCumplido(){
		return objetivo.estaVivo().negate()|| objetivo.esPeligroso().negate()
	}
	
		method ejecutarAtaques(){
		integrantes.forEach({integrante => integrante.atacar(objetivo)})
	}
}
