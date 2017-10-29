import casa.*
import conspiraciones.*
import mascotas.*

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

	method esSoltero(){
		return self.conyuges().isEmpty()
	}

	method aliados(){
		return (compania+conyuges+(casa.integrantes()))	
	}

	method estaSolo(){
		return compania.isEmpty()
	}

	method patrimonio(){
		return casa.patrimonio()
	}

	method casarse(pretendiente){
		if(casa.puedenCasarse(self,pretendiente)){
			self.conyuges().add(pretendiente)
			pretendiente.conyuges().add(self)
		}else{
			error.trhowWithMenssage("la casa no permite casamiento")
		}
	}
	
	method derrochar(){
		casa.gastar(15)
	}
	
	method esRica(){
		return casa.esRica()
	}
	
	method puedoCasarme(pretendiente){
		return casa.condicionMatrimonio(self,pretendiente)
	}
	
	method casa(){
		return casa
	}

	method conyuges(){
		return conyuges
	}
	
	method traicion(integrantes){
		self.aliados().filter({personaje=>self.aliados().contains(personaje)})
	}

	method esPeligroso(){
		return self.aliadosPoderosos()||self.matrimonioRico()||self.amigoPeligroso()    
	}

	method aliadosPoderosos(){
		return self.aliados().sum({personaje=>personaje.dinero()})>=1000
	}
	
	method matrimonioRico(){
		return conyuges.all({conyuge => conyuge.esRica()})
	}
	
	method amigoPeligroso(){
		return self.aliados().any({personaje=>personaje.esPeligroso()})
	}
}




//personalidad

object sutil{}// problema con personaje pobre


class Asesino{
	method atacar(persona){
		persona.morir()
	}
}


class AsesinoPrecavido inherits Asesino{
	override method atacar(persona){
		if(persona.estaSolo()){
		super (persona)
		}
	}
}


class Disipado{
	method atacar(persona){
		persona.derrochar()
	}
}


class Miedoso{
	method atacar(persona){}
	}
	

