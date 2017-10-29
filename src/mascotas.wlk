class Mascota{

	method patrimonio(){
	return 0
} 
}

class Dragon inherits Mascota{
	method esPeligroso(){
	return true
}
}

class Lobo inherits Mascota{
	var deRaza
	constructor(raza){deRaza=raza}
	
	method esPeligroso(){
		return self.esHungaro()
		}
	
	method esHungaro(){
		return deRaza
	}
}


