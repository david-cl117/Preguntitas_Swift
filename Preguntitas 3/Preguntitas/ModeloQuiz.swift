//
//  ModeloQuiz.swift
//  Preguntitas
//
//  Created by Picho Man on 15/01/18.
//  Copyright © 2018 Pichobaby. All rights reserved.
//

import Foundation



class ModeloQuiz1 {
    
    //Categoria 1: perritos
    //Array con unicamente strings (Preguntas)
    let preguntas: Array<String> = ["¿Cuál es la mejor raza?", "¿Nombre del perro de Charley Brown?", "¿Como se llama mi perro?","¿# de cabezas del perro de Ades?", "¿Color del perro de las pistas de Blue?"]
    
    //Array de strings para pregunta1
    let opciones1: Array<String> = ["Beagle", "Pug", "Maltes", "Terrier"]
    
    //Array de strings para pregunta2
    let opciones2: Array<String> = ["Snoopy","Pepe", "Tobby", "Juan"]
    
    //Array de strings para pregunta3
    let opciones3: Array<String> = ["Obi", "Tobby", "Capy", "Lobezno"]
    
    //Array de strings para pregunta4
    let opciones4: Array<String> = ["3", "1", "5", "2"]
    
    //Array de strings para pregunta5
    let opciones5: Array<String> = ["Azul", "Verde", "Rojo", "Morado"]
    
    
    //Categoria 2: deportes
    //Array con unicamente strings (Preguntas)
    let preguntas2: Array<String> = ["¿Hombre mas rápido del mundo?", "¿Récord mundial en los 100m planos?", "¿Fundador del Parkour?","¿Juegos olímpicos para discapacitados?", "¿Material de las pistas de atletismo?"]
    
    //Array de strings para pregunta1
    let deportes1: Array<String> = ["Bolt", "De Grasse", "Picho", "Gatlin"]
    
    //Array de strings para pregunta2
    let deportes2: Array<String> = ["9.58s","10.03s", "9.47s", "11.83s"]
    
    //Array de strings para pregunta3
    let deportes3: Array<String> = ["David Belle", "Daer Sánchez", "Phosky", "Dieguito"]
    
    //Array de strings para pregunta4
    let deportes4: Array<String> = ["Paralímpicos", "Mundial futbol", "Parapanamericanos", "Panamericanos"]
    
    //Array de strings para pregunta5
    let deportes5: Array<String> = ["Tartán", "Caucho", "Foami", "Acero"]
    
    
    //Categoria 3: Metal
    //Array con unicamente strings (Preguntas)
    let preguntas3: Array<String> = ["¿En que año surgió el heavy metal?", "¿Una de las primeras bandas de metal?", "¿Banda de progressive metal?","¿Banda de death metal con una vocalista mujer?", "¿Guitarrista principal de Avenged Sevenfold?"]
    
    //Array de strings para pregunta1
    let metal1: Array<String> = ["1970", "1910", "2000", "1980"]
    
    //Array de strings para pregunta2
    let metal2: Array<String> = ["Led Zeppelin","Scorpions", "Metallica", "Iron Maiden"]
    
    //Array de strings para pregunta3
    let metal3: Array<String> = ["Dream Theater", "Avenged Sevenfold", "Cannibal Corpse", "Amon Amarth"]
    
    //Array de strings para pregunta4
    let metal4: Array<String> = ["Arch Enemy", "Lamb of God", "Gorgoroth", "System Of A Down"]
    
    //Array de strings para pregunta5
    let metal5: Array<String> = ["Synyster Gates", "Jimmy Hendrix", "John Petrucci", "Josué Legorreta"]
    
    
    //Categoria 4: Tecnologia
    //Array con unicamente strings (Preguntas)
    let preguntas4: Array<String> = ["¿Un receptor para varios mensajes?", "¿Operaciones que realiza un ALU?", "¿Mejor celular del mundo?","¿Lenguaje de programacion exclusivo para apple?", "¿Tablets de la pre-historia?"]
    
    //Array de strings para pregunta1
    let tec1: Array<String> = ["Super heterodino", "Super Man", "Super Saiyan", "Super clase"]
    
    //Array de strings para pregunta2
    let tec2: Array<String> = ["Aritmeticas/lógicas","Sistema de ecuaciones", "Despejes", "Divisiones"]
    
    //Array de strings para pregunta3
    let tec3: Array<String> = ["Moto g4 plus", "iPhone X", "Samsung S8", "Nokia 5300"]
    
    //Array de strings para pregunta4
    let tec4: Array<String> = ["Swift", "C", "Objective C", "Java"]
    
    //Array de strings para pregunta5
    let tec5: Array<String> = ["Palm", "ipad", "Pizarrón mágico", "Nokia viejito"]
    
    
    //Categoria 5: pelis
    //Array con unicamente strings (Preguntas)
    let preguntas5: Array<String> = ["¿Saga basada en los libros de JK. Rowling?", "¿Director de películas mexicano?", "¿Película en donde muere Wolverine?","¿Rival y amigo de Rocky Balboa?", "¿Pelicula dirigida por Chespirito?"]
    
    //Array de strings para pregunta1
    let peli1: Array<String> = ["Harry Potter", "Maze Runner", "El señor de los anilos", "Star Wars"]
    
    //Array de strings para pregunta2
    let peli2: Array<String> = ["Alfonso Cuarón","Steven Spielberg", "Christopher Nolan", "Silvester Stalone"]
    
    //Array de strings para pregunta3
    let peli3: Array<String> = ["Logan", "Wolverine inmortal", "X-men: Apocalipsis", "Deadpool"]
    
    //Array de strings para pregunta4
    let peli4: Array<String> = ["Apollo Creed", "Ivan Drago", "Polly", "Adrian"]
    
    //Array de strings para pregunta5
    let peli5: Array<String> = ["El Chanfle", "Chapilin colorado", "El doctor Chapatin", "Chiripiolca"]
    
    
    var preguntaActual = 0 //Swift infiere de que tipo son las variables.
    
    //Regresa preguntas perritos
    func preguntaPerro() -> String {
        
        preguntaActual = (Int(arc4random_uniform(5)))
        var preguntita = String()
        
       // preguntaActual += 1 //Se incrementa 1
        
        //Cuando el contador llegue a 2 (# de preguntas), se reinicia.
        //if (preguntaActual == self.preguntas.count) {
        //    preguntaActual = 0
      //  }
        
            preguntita = self.preguntas[preguntaActual] //regresa las preguntas.
        
        return preguntita
    }
    
    //Regresa preguntas deportes
    func preguntaSport() -> String {
        
        preguntaActual = (Int(arc4random_uniform(5)))
        var preguntita = String()
        
       // preguntaActual += 1 //Se incrementa 1
        
        //Cuando el contador llegue a 2 (# de preguntas), se reinicia.
       // if (preguntaActual == self.preguntas2.count) {
       //     preguntaActual = 0
       // }
        
        preguntita = self.preguntas2[preguntaActual] //regresa las preguntas.
        
        return preguntita
    }
    
    //Regresa preguntas metal
    func preguntaMetal() -> String {

        preguntaActual = (Int(arc4random_uniform(5)))
        var preguntita = String()
        
        //preguntaActual += 1 //Se incrementa 1
        
        //Cuando el contador llegue a 2 (# de preguntas), se reinicia.
       // if (preguntaActual == self.preguntas3.count) {
          //  preguntaActual = 0
       // }
        
        preguntita = self.preguntas3[preguntaActual] //regresa las preguntas.
        
        return preguntita
    }
    
    //Regresa preguntas tec
    func preguntaTec() -> String {
        
        preguntaActual = (Int(arc4random_uniform(5)))
        var preguntita = String()
        
      //  preguntaActual += 1 //Se incrementa 1
        
        //Cuando el contador llegue a 2 (# de preguntas), se reinicia.
       // if (preguntaActual == self.preguntas4.count) {
       //     preguntaActual = 0
      //  }
        
        preguntita = self.preguntas4[preguntaActual] //regresa las preguntas.
        
        return preguntita
    }
    
    //Regresa preguntas peli
    func preguntaPeli() -> String {
        
        preguntaActual = (Int(arc4random_uniform(5)))
        var preguntita = String()
        
        //preguntaActual += 1 //Se incrementa 1
        
        //Cuando el contador llegue a 2 (# de preguntas), se reinicia.
       // if (preguntaActual == self.preguntas5.count) {
        //    preguntaActual = 0
        //}
        
        preguntita = self.preguntas5[preguntaActual] //regresa las preguntas.
        
        return preguntita
    }
    
    
    //Opciones perritos
    func opcionesPerro() -> Array<String> {
        
        var opc = Array<String>()
        
        if preguntaActual == 0 {
            opc = opciones1
        }
                
        else if preguntaActual == 1 {
            opc = opciones2
        }
                
        else if preguntaActual == 2 {
            opc = opciones3
        }
                
        else if preguntaActual == 3 {
            opc = opciones4
        }
                
        else if preguntaActual == 4 {
            opc = opciones5
        }
        return opc
    }
    
    //Opciones deportes
    func opcionesSport() -> Array<String> {
        
        var opc = Array<String>()
        
        if preguntaActual == 0 {
            opc = deportes1
        }
            
        else if preguntaActual == 1 {
            opc = deportes2
        }
            
        else if preguntaActual == 2 {
            opc = deportes3
        }
            
        else if preguntaActual == 3 {
            opc = deportes4
        }
            
        else if preguntaActual == 4 {
            opc = deportes5
        }
        return opc
    }
    
    //Opciones Metal
    func opcionesMetal() -> Array<String> {
        
        var opc = Array<String>()
        
        if preguntaActual == 0 {
            opc = metal1
        }
            
        else if preguntaActual == 1 {
            opc = metal2
        }
            
        else if preguntaActual == 2 {
            opc = metal3
        }
            
        else if preguntaActual == 3 {
            opc = metal4
        }
            
        else if preguntaActual == 4 {
            opc = metal5
        }
        return opc
    }
    
    //Opciones Tec
    func opcionesTec() -> Array<String> {
        
        var opc = Array<String>()
        
        if preguntaActual == 0 {
            opc = tec1
        }
            
        else if preguntaActual == 1 {
            opc = tec2
        }
            
        else if preguntaActual == 2 {
            opc = tec3
        }
            
        else if preguntaActual == 3 {
            opc = tec4
        }
            
        else if preguntaActual == 4 {
            opc = tec5
        }
        return opc
    }
    
    //Opciones peli
    func opcionesPeli() -> Array<String> {
        
        var opc = Array<String>()
        
        if preguntaActual == 0 {
            opc = peli1
        }
            
        else if preguntaActual == 1 {
            opc = peli2
        }
            
        else if preguntaActual == 2 {
            opc = peli3
        }
            
        else if preguntaActual == 3 {
            opc = peli4
        }
            
        else if preguntaActual == 4 {
            opc = peli5
        }
        return opc
    }
            
}
