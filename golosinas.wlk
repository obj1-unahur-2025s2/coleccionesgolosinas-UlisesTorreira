// PARTE 1  
  // GOLOSINAS
class Bombon{
  var peso = 15 

  method valor() = 5
  method peso() = peso
  method gusto() = 'frutilla'
  method libreDeGluten() = true
  method mordisco(){peso = (0).max(peso*0.8)-1}   
  }

class Alfajor {
  var peso = 300 

  method valor() = 12
  method peso() = peso
  method gusto() = 'chocolate'
  method libreDeGluten() = !true
  method mordisco(){peso = (0).max(peso*0.8)}
}

class Caramelo {
  var peso = 5

  method valor() = 1
  method peso() = peso
  method gusto() = 'frutilla'
  method libreDeGluten() = true
  method mordisco(){peso = peso -1}
  }

class Chupetin {
  var peso = 7 

  method valor() = 2
  method peso() = peso
  method gusto() = 'naranja'
  method libreDeGluten() = true
  method mordisco(){peso = if(peso>2) peso else peso*0.9}
  }

class Oblea {
  var peso = 250 

  method valor() = 5
  method peso() = peso
  method gusto() = 'vainilla'
  method libreDeGluten() = !true
  method mordisco(){peso = if(peso>70) peso*0.5 else peso*0.25}
}

class Chocolatin {
  var peso 

  method peso() = peso
  method valor() = 0.50 * peso
  method gusto() = 'chocolate'
  method libreDeGluten() = !true
  method mordisco(){peso = self.peso() - 2 }
}

class GolosinaBañada {
  var property golosina 
  var peso = golosina.peso() + 4
  
  method valor() = golosina.valor() + 2
  method peso() = peso
  method gusto() = golosina.gusto()
  method libreDeGluten() = golosina.libreDeGluten()
  method mordisco(){peso = golosina.mordisco() - 2}
}

class Pastilla {
  const peso = 5
  var libreDeGluten = true
  var gusto = 'frutilla'

  method valor() = if(self.libreDeGluten()) 7 else 10 
  method peso() = peso
  method gusto() = gusto
  method tieneGluten(esGlutenFree) {
    libreDeGluten = esGlutenFree
  }
  method libreDeGluten() = libreDeGluten
  method mordisco(){  
    if(gusto == 'frutilla' ){gusto = 'chocolate'}
    if(gusto == 'chocolate'){gusto = 'naranja'  }
    if(gusto == 'naranja'  ){gusto = 'frutilla' }
  }
}