// PARTE 2
    // MARIANO
import golosinas.*

object mariano {
    const property golosinas = []

    method comprar(unaGolosina){  golosinas.add(unaGolosina) }
    method desechar(unaGolosina){ golosinas.remove(unaGolosina)  }
    method cantidadDeGolosinas() = golosinas.size() 
    method tieneLaGolosina(unaGolosina) = golosinas.contains(unaGolosina) 
    method probarGolosinas(){ golosinas.all({g=>g.mordisco()}) }
    method hayGolosinaSinTACC() = golosinas.any({g=>g.libreDeGluten()}) 
    method preciosCuidados() = golosinas.forEach({g=>g.valor()<=10})  
    method golosinaDeSabor(unSabor) = golosinas.map({g=>unSabor}).first()
    method golosinasDeSabor(unSabor) = golosinas.map({g=>unSabor})
    method sabores(){}
    method golosinaMasCara() = golosinas.max({g=>g.valor()})
    method pesoGolosinas() = golosinas.sum({g=>g.peso()})
    
// REALIZAR ESTADISTICA

    method golosinasFaltantes(golosinasDeseadas){}
    method gustosFaltantes(gustosDeseados){}
}
