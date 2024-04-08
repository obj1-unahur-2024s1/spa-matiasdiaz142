object olivia{
	var gradoConcentracion = 6
	method gradoDeConcentracion(){return gradoConcentracion}
	method recibirMasajes(){gradoConcentracion = gradoConcentracion + 3}
	method discutir(){gradoConcentracion = gradoConcentracion - 1}
	
	//Agregando tomarBanioVapor para que no salte error
	method tomarBanioVapor(){}
}

object bruno{
	var feliz = true
	var sed = false
	var peso = 55000
	method feliz(){return feliz}
	method sed(){return sed}
	method peso(){return peso}
	
	method recibirMasajes(){feliz = true}
	method tomarBanioVapor(){
		peso = peso - 500
		sed = true
	}
	method tomarAgua(){sed = false}
	method comerFideos(){
		peso = peso + 250
		sed = true
	}	
	method correr(){
		peso = peso - 300
	}
	method verNoticiero(){feliz = false}
	
	method estaPerfecto(){
		return self.feliz() and (not self.sed()) and (peso>50000 and peso<70000)
	}
	
	method mediodiaEnCasa(){
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
}

object ramiro{
	var nivelContractura = 0
	var pielGrasosa
	
	method recibirMasajes(){nivelContractura = 0.max(nivelContractura - 2)}
	method tomarBanioVapor(){pielGrasosa = false}
	method comerBicMac(){pielGrasosa = true}
	method bajarALaFosa(){
		pielGrasosa = true
		nivelContractura = nivelContractura + 1
	}
	method jugarPaddle(){nivelContractura = nivelContractura + 3}
	
	method diaDeTrabajo(){
		self.bajarALaFosa()
		self.comerBicMac()
		self.bajarALaFosa()
	}
}

object spa{
	method atender(unaPersona){
		unaPersona.recibirMasajes()
		unaPersona.tomarBanioVapor()
	}
}