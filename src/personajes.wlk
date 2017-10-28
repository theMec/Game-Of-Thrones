import casa.*
import conspiraciones.*

class Personaje {
var casa
var ciudad
var condVida
var conyuges=#{}
var compania=#{}
var personalidad

constructor(unaC,unC,unM,vida,unosC,unaP){
casa=unaC
ciudad=unC
conyuges=unM
condVida=vida
compania=unosC
personalidad=unaP
}

method estaVivo(){
	return condVida
}

method morir(){
	condVida = false
}

method aliados(){
return (compania+conyuges+(casa.integrantes()))	
}

method estaSolo(){
	return compania.isEmpty()
}

method dinero(){
	return casa.patrimonio()
}

method casarse(pretendiente){
	if(casa.condicionMatrimonio(self,pretendiente)){
		self.conyuges().add(pretendiente)
		pretendiente.conyuges().add(self)
	}else{
		error.trhowWithMenssage("la casa no permite casamiento")
	}}
	
method casa(){
	return casa
}

method conyuges(){
	return conyuges
}

method esPeligroso(){
	return (self.aliados().map({personaje=>personaje.dinero()})>=1000)||(conyuges.all({conyuge => conyuge.casa().esRica()}))||(self.aliados().any({personaje=>personaje.esPeligroso()}))         
}//  me falta delegar <<


}


//personalidad

object sutil{}// problema con personaje pobre

object asesino{
method atacar(persona){
persona.morir()
}
}

object asesinoPrecavido{
method atacar(persona){
if(persona.estaSolo()){
persona.morir()
}
}
}


object disipado{
method atacar(persona){
persona.casa().gastar(15)
}
}


object miedoso{
	method atacar(persona){}
	}
	

