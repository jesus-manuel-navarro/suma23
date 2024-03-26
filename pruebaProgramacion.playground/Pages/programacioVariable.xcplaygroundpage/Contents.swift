//: [Previous](@previous)

import Foundation
import CoreFoundation

var greeting = "Hello, playground"

 let multiline = """
hola como es
esto es para poner saltos
multilinea
"""

print(multiline)

var numero1 = 11
var numero2 = 22
print (" el primer nuero es \(numero1)") // String template
var cadena = "hola"
var cadena1 = "como estas"
var concatenar = cadena + " " + cadena1
print(concatenar)
 
var numero11 = 12.3
var numero22 = 4.4
var resultado = numero11 + numero22

print (resultado)

//var  nnumerodobles = numero11 + numero1  // esto da un error porque no se puede sumar enteros con dobles

// pero esto si lo permitira porque hara un casting internamente


// todo no se pueden hacer operaciones de sumas o restas con booleanos
print (true || false)
print (true && false)
// el && obliga a que todas las condiciones se cumplan
print ((true) ? 5 : 4)


var pais = "España"

switch pais {
case "España", "Argentine":
        print("en \(pais) no se habla ingles")
case  "Inglaterra":
        print("en este \(pais) se habla ingles")
default:
        print("en este \(pais) no se habla ni ingles ni español")
}
var numeros = 0.22
    switch numeros {
    case  1, 2, 4:
            print("son numeros pares")
    case  (0.12)...(0.99):
            print("son decimales")
    default:
            print("no son numeros naturales")
    
}
var miArray = ["mercurio", "venus", "tierra"]
print (miArray)
var miSegundoArray = miArray

print(miSegundoArray)
miArray.append(contentsOf: ["marte", "jupiter"])
print(miArray)

miArray.remove(at: 4)

print(miArray)
//: [Next](@next)
numero11 + 2

var mapa = ["jose":12,"jesus":21]
mapa.updateValue(22, forKey: "jose")

print (mapa)

var indice = 0
repeat{
    print(miArray[indice])
    indice += 1
}while indice < miArray.count

// FUNCIONES

func dimeNombre(nombre:String, edad :Int){
    
    print("mi nombre es \(nombre) y mi edad es \(edad)")
    
}

dimeNombre(nombre: "jesus", edad: 51)

func holaCadena() -> String {
    return "hola"
}

print(holaCadena())

//26-3-24

class Programador{
    
    let nombre:String
    let edad : Int
    let lenguaje : [Lenguaje] //array de String
    var amigos : [Programador]?
    
    enum Lenguaje{
        case swift
        case kotlin
        case java
        case javascript
    }
    // bloque de inicializacion
    init(nombre:String, edad:Int, lenguaje:[Lenguaje], amigos:[Programador]?)
    {
        self.nombre = nombre
        self.edad = edad
        self.lenguaje = lenguaje
        self.amigos  = amigos
    }
    
    func programo(){
        print("programo en estos lenguajes ")
    }
    
    
}// fin de la clase

// vamos a instanciar la clase
let juan = Programador(nombre: "Juan", edad: 23, lenguaje: [.java,.javascript], amigos:nil) // los enum son para proteger la clase
let john = Programador(nombre: "john", edad: 21, lenguaje: [.java,.javascript], amigos:nil)

juan.amigos=[john]
print(juan.programo())

print(juan.lenguaje)

print(juan.amigos?.first?.nombre)

