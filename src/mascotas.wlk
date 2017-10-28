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
	method esPeligroso(){
	return false
	}
}

class LoboHuargo inherits Lobo{
	override method esPeligroso(){
	return true
	}
	}
