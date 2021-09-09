//
//  ViewController.swift
//  Preguntitas
//
//  Created by Blanco00 on 18-01-11.
//  Copyright © 2018 Pichobaby. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK: -Declaracion de outlets.
    //Labels
    @IBOutlet weak var labelPregunta: UILabel!

    @IBOutlet weak var correctoIncorrecto: UILabel!
    
    @IBOutlet weak var labelCategoria: UILabel!
    
    @IBOutlet weak var puntuacion: UILabel!
    
    @IBOutlet weak var Errores: UILabel!
    
    //Botones de opciones de respuesta
    @IBOutlet weak var opa: UIButton!
    @IBOutlet weak var opb: UIButton!
    @IBOutlet weak var opc: UIButton!
    @IBOutlet weak var opd: UIButton!
    
 
    //para llamar a las funciones del modelo.
    let quiz = ModeloQuiz1()
    
    //Esta funcion muestra la pregunta siguiente y pone los textos de botones en negro.
    @IBAction func muestraPregunta() {
        
        //Compara el string para asignar una categoría
        if  self.categor == "Perritos" {
            self.categorie = 1
        }
            
        else if self.categor == "Deportes"  {
            self.categorie = 2
        }
            
        else if self.categor == "Metal" {
            self.categorie = 3
        }
            
        else if self.categor == "Tecnología" {
            self.categorie = 4
        }
            
        else if self.categor == "Películas" {
            self.categorie = 5
        }
        //print ("muestra pregunta. categoria: \(self.categorie) \(self.categor) ")

        //Habilitamos los botones de opciones cuando cambiamos de pregunta.
        self.opa.isEnabled = true
        self.opb.isEnabled = true
        self.opc.isEnabled = true
        self.opd.isEnabled = true
        
        //Cuando cambiamos de pregunta, cambiamos el texto de los botones a negro
        self.opa.setTitleColor(UIColor.black, for: UIControl.State.normal)
        self.opb.setTitleColor(UIColor.black, for: UIControl.State.normal)
        self.opc.setTitleColor(UIColor.black, for: UIControl.State.normal)
        self.opd.setTitleColor(UIColor.black, for: UIControl.State.normal)
        
        //Label para pregunta
        if self.categorie == 1 {
            self.labelPregunta.text = self.quiz.preguntaPerro() //self=this
        }
        
        else if self.categorie == 2 {
            self.labelPregunta.text = self.quiz.preguntaSport() //self=this
        }
        
        else if self.categorie == 3 {
            self.labelPregunta.text = self.quiz.preguntaMetal() //self=this
        }
            
        else if self.categorie == 4 {
            self.labelPregunta.text = self.quiz.preguntaTec() //self=this
        }
        
        else if self.categorie == 5 {
            self.labelPregunta.text = self.quiz.preguntaPeli() //self=this
        }

        
        self.puntuacion.text = String(score)
        
        //Label de correcto/incorrecto en blanco
        self.correctoIncorrecto.text = ""
        
        //Variables que tomarán un valor aleatorio para las opciones
        var rand = 0
        var rand2 = 0
        var rand3 = 0
        var rand4 = 0
        
        //rand toma un valor aleatorio entre 0-3
        rand = (Int(arc4random_uniform(4)))
        
        //Ponemos opcion en un boton
        if self.categorie == 1 {
            self.opa.setTitle(self.quiz.opcionesPerro()[rand], for: UIControl.State.normal)
        }
        
        else if self.categorie == 2 {
            self.opa.setTitle(self.quiz.opcionesSport()[rand], for: UIControl.State.normal)
        }
        
        else if self.categorie == 3 {
            self.opa.setTitle(self.quiz.opcionesMetal()[rand], for: UIControl.State.normal)
        }
        
        else if self.categorie == 4 {
            self.opa.setTitle(self.quiz.opcionesTec()[rand], for: UIControl.State.normal)
        }
        
        else if self.categorie == 5 {
            self.opa.setTitle(self.quiz.opcionesPeli()[rand], for: UIControl.State.normal)
        }

        
         //Ponemos opcion en un boton
        repeat { //While para que no se repita la opcion
            rand2 = (Int(arc4random_uniform(4)))
        }while rand2 == rand
        
        if self.categorie == 1 {
            self.opb.setTitle(self.quiz.opcionesPerro()[rand2], for: UIControl.State.normal)
        }
        
        else if self.categorie == 2 {
            self.opb.setTitle(self.quiz.opcionesSport()[rand2], for: UIControl.State.normal)
        }
        
        else if self.categorie == 3 {
            self.opb.setTitle(self.quiz.opcionesMetal()[rand2], for: UIControl.State.normal)
        }
        
        else if self.categorie == 4 {
            self.opb.setTitle(self.quiz.opcionesTec()[rand2], for: UIControl.State.normal)
        }
        
        else if self.categorie == 5 {
            self.opb.setTitle(self.quiz.opcionesPeli()[rand2], for: UIControl.State.normal)
        }
        
       
        
        //Ponemos opcion en un boton
        repeat { //While para que no se repita la opcion
            rand3 = (Int(arc4random_uniform(4)))
        }while (rand3 == rand) || (rand3 == rand2)
        
        if self.categorie == 1 {
            self.opc.setTitle(self.quiz.opcionesPerro()[rand3], for: UIControl.State.normal)
        }
        
        else if self.categorie == 2 {
            self.opc.setTitle(self.quiz.opcionesSport()[rand3], for: UIControl.State.normal)
        }
        
        else if self.categorie == 3 {
            self.opc.setTitle(self.quiz.opcionesMetal()[rand3], for: UIControl.State.normal)
        }
        
        else if self.categorie == 4 {
            self.opc.setTitle(self.quiz.opcionesTec()[rand3], for: UIControl.State.normal)
        }
        
        else if self.categorie == 5 {
            self.opc.setTitle(self.quiz.opcionesPeli()[rand3], for: UIControl.State.normal)
        }
      
        
        //Ponemos opcion en un boton
        repeat { //While para que no se repita la opcion
            rand4 = (Int(arc4random_uniform(4)))
        }while (rand4 == rand) || (rand4 == rand2) || (rand4 == rand3)
        
        if self.categorie == 1 {
            self.opd.setTitle(self.quiz.opcionesPerro()[rand4], for: UIControl.State.normal)
        }
        
        else if self.categorie == 2 {
            self.opd.setTitle(self.quiz.opcionesSport()[rand4], for: UIControl.State.normal)
        }
        
        else if self.categorie == 3 {
            self.opd.setTitle(self.quiz.opcionesMetal()[rand4], for: UIControl.State.normal)
        }
        
        else if self.categorie == 4 {
            self.opd.setTitle(self.quiz.opcionesTec()[rand4], for: UIControl.State.normal)
        }
        
        else if self.categorie == 5 {
            self.opd.setTitle(self.quiz.opcionesPeli()[rand4], for: UIControl.State.normal)
        }
        
    }
    
    //Variables para score
    var score = 0
    var error = 0
    
    @IBAction func opcionA(_ sender: UIButton) {
        
        //Una vez presionado el boton, se desactivan todos
        self.opa.isEnabled = false
        self.opb.isEnabled = false
        self.opc.isEnabled = false
        self.opd.isEnabled = false
        
        //Si se escoje la posicion 0 del arreglo, la respuesta es correcta
        if self.categorie == 1 {
                if sender.currentTitle == self.quiz.opcionesPerro()[0] {
                    self.correctoIncorrecto.text = "¡CORRECTO!" //Label correcto
                    self.correctoIncorrecto.textColor = UIColor.green //Color verde label
                    score += 1 //Score se incrementa
                    self.puntuacion.text = String(score) //Ponemos score en el label
                    self.puntuacion.textColor = UIColor.green //label de score color verde
            
                    //Ponemos el texto del boton verde si la opcion es correcta, rojo si es incorrects
                    self.opa.setTitleColor(UIColor.green, for: UIControl.State.normal)
                    self.opb.setTitleColor(UIColor.red, for: UIControl.State.normal)
                    self.opc.setTitleColor(UIColor.red, for: UIControl.State.normal)
                    self.opd.setTitleColor(UIColor.red, for: UIControl.State.normal)
            
                }
            
                else {//Si no, es incorrecto
                    self.correctoIncorrecto.text = "INCORRECTO"//Label incorrecto
                    self.correctoIncorrecto.textColor = UIColor.red// Label color rojo
                    error += 1 // Error se incrementa
                    self.Errores.text = String(error) //Ponemos numero de errores en el label
                    self.Errores.textColor = UIColor.red // Label rojo de errores
                }
        }
        
        else if self.categorie == 2 {
            if sender.currentTitle == self.quiz.opcionesSport()[0] {
                self.correctoIncorrecto.text = "¡CORRECTO!" //Label correcto
                self.correctoIncorrecto.textColor = UIColor.green //Color verde label
                score += 1 //Score se incrementa
                self.puntuacion.text = String(score) //Ponemos score en el label
                self.puntuacion.textColor = UIColor.green //label de score color verde
                
                //Ponemos el texto del boton verde si la opcion es correcta, rojo si es incorrects
                self.opa.setTitleColor(UIColor.green, for: UIControl.State.normal)
                self.opb.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opc.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opd.setTitleColor(UIColor.red, for: UIControl.State.normal)
                
            }
                
            else {//Si no, es incorrecto
                self.correctoIncorrecto.text = "INCORRECTO"//Label incorrecto
                self.correctoIncorrecto.textColor = UIColor.red// Label color rojo
                error += 1 // Error se incrementa
                self.Errores.text = String(error) //Ponemos numero de errores en el label
                self.Errores.textColor = UIColor.red // Label rojo de errores
            }
            
        }
        
        else if self.categorie == 3 {
            if sender.currentTitle == self.quiz.opcionesMetal()[0] {
                self.correctoIncorrecto.text = "¡CORRECTO!" //Label correcto
                self.correctoIncorrecto.textColor = UIColor.green //Color verde label
                score += 1 //Score se incrementa
                self.puntuacion.text = String(score) //Ponemos score en el label
                self.puntuacion.textColor = UIColor.green //label de score color verde
                
                //Ponemos el texto del boton verde si la opcion es correcta, rojo si es incorrects
                self.opa.setTitleColor(UIColor.green, for: UIControl.State.normal)
                self.opb.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opc.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opd.setTitleColor(UIColor.red, for: UIControl.State.normal)
                
            }
                
            else {//Si no, es incorrecto
                self.correctoIncorrecto.text = "INCORRECTO"//Label incorrecto
                self.correctoIncorrecto.textColor = UIColor.red// Label color rojo
                error += 1 // Error se incrementa
                self.Errores.text = String(error) //Ponemos numero de errores en el label
                self.Errores.textColor = UIColor.red // Label rojo de errores
            }
        
        }
        
        else if self.categorie == 4 {
            if sender.currentTitle == self.quiz.opcionesTec()[0] {
                self.correctoIncorrecto.text = "¡CORRECTO!" //Label correcto
                self.correctoIncorrecto.textColor = UIColor.green //Color verde label
                score += 1 //Score se incrementa
                self.puntuacion.text = String(score) //Ponemos score en el label
                self.puntuacion.textColor = UIColor.green //label de score color verde
                
                //Ponemos el texto del boton verde si la opcion es correcta, rojo si es incorrects
                self.opa.setTitleColor(UIColor.green, for: UIControl.State.normal)
                self.opb.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opc.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opd.setTitleColor(UIColor.red, for: UIControl.State.normal)
                
            }
                
            else {//Si no, es incorrecto
                self.correctoIncorrecto.text = "INCORRECTO"//Label incorrecto
                self.correctoIncorrecto.textColor = UIColor.red// Label color rojo
                error += 1 // Error se incrementa
                self.Errores.text = String(error) //Ponemos numero de errores en el label
                self.Errores.textColor = UIColor.red // Label rojo de errores
            }
            
        }
        
        else if self.categorie == 5 {
            if sender.currentTitle == self.quiz.opcionesPeli()[0] {
                self.correctoIncorrecto.text = "¡CORRECTO!" //Label correcto
                self.correctoIncorrecto.textColor = UIColor.green //Color verde label
                score += 1 //Score se incrementa
                self.puntuacion.text = String(score) //Ponemos score en el label
                self.puntuacion.textColor = UIColor.green //label de score color verde
                
                //Ponemos el texto del boton verde si la opcion es correcta, rojo si es incorrects
                self.opa.setTitleColor(UIColor.green, for: UIControl.State.normal)
                self.opb.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opc.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opd.setTitleColor(UIColor.red, for: UIControl.State.normal)
                
            }
                
            else {//Si no, es incorrecto
                self.correctoIncorrecto.text = "INCORRECTO"//Label incorrecto
                self.correctoIncorrecto.textColor = UIColor.red// Label color rojo
                error += 1 // Error se incrementa
                self.Errores.text = String(error) //Ponemos numero de errores en el label
                self.Errores.textColor = UIColor.red // Label rojo de errores
            }
            
        }
    }
    
    @IBAction func opcionB(_ sender: UIButton) {
        //Una vez presionado el boton, se desactiva
        self.opa.isEnabled = false
        self.opb.isEnabled = false
        self.opc.isEnabled = false
        self.opd.isEnabled = false
        
        //Si se escoje la posicion 0 del arreglo, la respuesta es correcta
        if self.categorie == 1 {
            
            if sender.currentTitle == self.quiz.opcionesPerro()[0] {
                self.correctoIncorrecto.text = "¡CORRECTO!" //Label correcto
                self.correctoIncorrecto.textColor = UIColor.green //Color verde label
                score += 1 //Score se incrementa
                self.puntuacion.text = String(score) //Ponemos score en el label
                self.puntuacion.textColor = UIColor.green //label de score color verde
            
                //Ponemos el texto del boton verde si la opcion es correcta, rojo si es incorrects
                self.opa.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opb.setTitleColor(UIColor.green, for: UIControl.State.normal)
                self.opc.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opd.setTitleColor(UIColor.red, for: UIControl.State.normal)
            }
            
            else {//Si no, es incorrecto
                self.correctoIncorrecto.text = "INCORRECTO" //Label incorrecto
                self.correctoIncorrecto.textColor = UIColor.red // Label color rojo
                error += 1 // Error se incrementa
                self.Errores.text = String(error) //Ponemos numero de errores en el label
                self.Errores.textColor = UIColor.red // Label rojo de errores
            }
        }
        
        else if self.categorie == 2 {
            if sender.currentTitle == self.quiz.opcionesSport()[0] {
                self.correctoIncorrecto.text = "¡CORRECTO!" //Label correcto
                self.correctoIncorrecto.textColor = UIColor.green //Color verde label
                score += 1 //Score se incrementa
                self.puntuacion.text = String(score) //Ponemos score en el label
                self.puntuacion.textColor = UIColor.green //label de score color verde
                
                //Ponemos el texto del boton verde si la opcion es correcta, rojo si es incorrects
                self.opa.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opb.setTitleColor(UIColor.green, for: UIControl.State.normal)
                self.opc.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opd.setTitleColor(UIColor.red, for: UIControl.State.normal)
            }
                
            else {//Si no, es incorrecto
                self.correctoIncorrecto.text = "INCORRECTO" //Label incorrecto
                self.correctoIncorrecto.textColor = UIColor.red // Label color rojo
                error += 1 // Error se incrementa
                self.Errores.text = String(error) //Ponemos numero de errores en el label
                self.Errores.textColor = UIColor.red // Label rojo de errores
            }
        }
        
        else if self.categorie == 3 {
            if sender.currentTitle == self.quiz.opcionesMetal()[0] {
                self.correctoIncorrecto.text = "¡CORRECTO!" //Label correcto
                self.correctoIncorrecto.textColor = UIColor.green //Color verde label
                score += 1 //Score se incrementa
                self.puntuacion.text = String(score) //Ponemos score en el label
                self.puntuacion.textColor = UIColor.green //label de score color verde
                
                //Ponemos el texto del boton verde si la opcion es correcta, rojo si es incorrects
                self.opa.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opb.setTitleColor(UIColor.green, for: UIControl.State.normal)
                self.opc.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opd.setTitleColor(UIColor.red, for: UIControl.State.normal)
            }
                
            else {//Si no, es incorrecto
                self.correctoIncorrecto.text = "INCORRECTO" //Label incorrecto
                self.correctoIncorrecto.textColor = UIColor.red // Label color rojo
                error += 1 // Error se incrementa
                self.Errores.text = String(error) //Ponemos numero de errores en el label
                self.Errores.textColor = UIColor.red // Label rojo de errores
            }
        }
        
        else if self.categorie == 4 {
            if sender.currentTitle == self.quiz.opcionesTec()[0] {
                self.correctoIncorrecto.text = "¡CORRECTO!" //Label correcto
                self.correctoIncorrecto.textColor = UIColor.green //Color verde label
                score += 1 //Score se incrementa
                self.puntuacion.text = String(score) //Ponemos score en el label
                self.puntuacion.textColor = UIColor.green //label de score color verde
                
                //Ponemos el texto del boton verde si la opcion es correcta, rojo si es incorrects
                self.opa.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opb.setTitleColor(UIColor.green, for: UIControl.State.normal)
                self.opc.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opd.setTitleColor(UIColor.red, for: UIControl.State.normal)
            }
                
            else {//Si no, es incorrecto
                self.correctoIncorrecto.text = "INCORRECTO" //Label incorrecto
                self.correctoIncorrecto.textColor = UIColor.red // Label color rojo
                error += 1 // Error se incrementa
                self.Errores.text = String(error) //Ponemos numero de errores en el label
                self.Errores.textColor = UIColor.red // Label rojo de errores
            }
        }
        
        else if self.categorie == 5 {
            if sender.currentTitle == self.quiz.opcionesPeli()[0] {
                self.correctoIncorrecto.text = "¡CORRECTO!" //Label correcto
                self.correctoIncorrecto.textColor = UIColor.green //Color verde label
                score += 1 //Score se incrementa
                self.puntuacion.text = String(score) //Ponemos score en el label
                self.puntuacion.textColor = UIColor.green //label de score color verde
                
                //Ponemos el texto del boton verde si la opcion es correcta, rojo si es incorrects
                self.opa.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opb.setTitleColor(UIColor.green, for: UIControl.State.normal)
                self.opc.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opd.setTitleColor(UIColor.red, for: UIControl.State.normal)
            }
                
            else {//Si no, es incorrecto
                self.correctoIncorrecto.text = "INCORRECTO" //Label incorrecto
                self.correctoIncorrecto.textColor = UIColor.red // Label color rojo
                error += 1 // Error se incrementa
                self.Errores.text = String(error) //Ponemos numero de errores en el label
                self.Errores.textColor = UIColor.red // Label rojo de errores
            }
        }
    }
    
    @IBAction func opcionC(_ sender: UIButton) {
        //Una vez presionado el boton, se desactiva
        self.opa.isEnabled = false
        self.opb.isEnabled = false
        self.opc.isEnabled = false
        self.opd.isEnabled = false
        
        //Si se escoje la posicion 0 del arreglo, la respuesta es correcta
        if self.categorie == 1 {
            
            if sender.currentTitle == self.quiz.opcionesPerro()[0] {
                self.correctoIncorrecto.text = "¡CORRECTO!" //Label correcto
                self.correctoIncorrecto.textColor = UIColor.green //Color verde label
                score += 1 //Score se incrementa
                self.puntuacion.text = String(score) //Ponemos score en el label
                self.puntuacion.textColor = UIColor.green //label de score color verde
                
                //Ponemos el texto del boton verde si la opcion es correcta, rojo si es incorrects
                self.opa.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opb.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opc.setTitleColor(UIColor.green, for: UIControl.State.normal)
                self.opd.setTitleColor(UIColor.red, for: UIControl.State.normal)
            }
            
            else {//Si no, es incorrecto
                self.correctoIncorrecto.text = "INCORRECTO"//Label incorrecto
                self.correctoIncorrecto.textColor = UIColor.red // Label color rojo
                error += 1 // Error se incrementa
                self.Errores.text = String(error) //Ponemos numero de errores en el label
                self.Errores.textColor = UIColor.red // Label rojo de errores
            }
        }
        
        else if self.categorie == 2 {
            if sender.currentTitle == self.quiz.opcionesSport()[0] {
                self.correctoIncorrecto.text = "¡CORRECTO!" //Label correcto
                self.correctoIncorrecto.textColor = UIColor.green //Color verde label
                score += 1 //Score se incrementa
                self.puntuacion.text = String(score) //Ponemos score en el label
                self.puntuacion.textColor = UIColor.green //label de score color verde
                
                //Ponemos el texto del boton verde si la opcion es correcta, rojo si es incorrects
                self.opa.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opb.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opc.setTitleColor(UIColor.green, for: UIControl.State.normal)
                self.opd.setTitleColor(UIColor.red, for: UIControl.State.normal)
            }
                
            else {//Si no, es incorrecto
                self.correctoIncorrecto.text = "INCORRECTO"//Label incorrecto
                self.correctoIncorrecto.textColor = UIColor.red // Label color rojo
                error += 1 // Error se incrementa
                self.Errores.text = String(error) //Ponemos numero de errores en el label
                self.Errores.textColor = UIColor.red // Label rojo de errores
            }
        }
        
        else if self.categorie == 3 {
            if sender.currentTitle == self.quiz.opcionesMetal()[0] {
                self.correctoIncorrecto.text = "¡CORRECTO!" //Label correcto
                self.correctoIncorrecto.textColor = UIColor.green //Color verde label
                score += 1 //Score se incrementa
                self.puntuacion.text = String(score) //Ponemos score en el label
                self.puntuacion.textColor = UIColor.green //label de score color verde
                
                //Ponemos el texto del boton verde si la opcion es correcta, rojo si es incorrects
                self.opa.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opb.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opc.setTitleColor(UIColor.green, for: UIControl.State.normal)
                self.opd.setTitleColor(UIColor.red, for: UIControl.State.normal)
            }
                
            else {//Si no, es incorrecto
                self.correctoIncorrecto.text = "INCORRECTO"//Label incorrecto
                self.correctoIncorrecto.textColor = UIColor.red // Label color rojo
                error += 1 // Error se incrementa
                self.Errores.text = String(error) //Ponemos numero de errores en el label
                self.Errores.textColor = UIColor.red // Label rojo de errores
            }
        }
        
        else if self.categorie == 4 {
            if sender.currentTitle == self.quiz.opcionesTec()[0] {
                self.correctoIncorrecto.text = "¡CORRECTO!" //Label correcto
                self.correctoIncorrecto.textColor = UIColor.green //Color verde label
                score += 1 //Score se incrementa
                self.puntuacion.text = String(score) //Ponemos score en el label
                self.puntuacion.textColor = UIColor.green //label de score color verde
                
                //Ponemos el texto del boton verde si la opcion es correcta, rojo si es incorrects
                self.opa.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opb.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opc.setTitleColor(UIColor.green, for: UIControl.State.normal)
                self.opd.setTitleColor(UIColor.red, for: UIControl.State.normal)
            }
                
            else {//Si no, es incorrecto
                self.correctoIncorrecto.text = "INCORRECTO"//Label incorrecto
                self.correctoIncorrecto.textColor = UIColor.red // Label color rojo
                error += 1 // Error se incrementa
                self.Errores.text = String(error) //Ponemos numero de errores en el label
                self.Errores.textColor = UIColor.red // Label rojo de errores
            }
        }
        
        else if self.categorie == 5 {
            if sender.currentTitle == self.quiz.opcionesPeli()[0] {
                self.correctoIncorrecto.text = "¡CORRECTO!" //Label correcto
                self.correctoIncorrecto.textColor = UIColor.green //Color verde label
                score += 1 //Score se incrementa
                self.puntuacion.text = String(score) //Ponemos score en el label
                self.puntuacion.textColor = UIColor.green //label de score color verde
                
                //Ponemos el texto del boton verde si la opcion es correcta, rojo si es incorrects
                self.opa.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opb.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opc.setTitleColor(UIColor.green, for: UIControl.State.normal)
                self.opd.setTitleColor(UIColor.red, for: UIControl.State.normal)
            }
                
            else {//Si no, es incorrecto
                self.correctoIncorrecto.text = "INCORRECTO"//Label incorrecto
                self.correctoIncorrecto.textColor = UIColor.red // Label color rojo
                error += 1 // Error se incrementa
                self.Errores.text = String(error) //Ponemos numero de errores en el label
                self.Errores.textColor = UIColor.red // Label rojo de errores
            }
        }
    }
    
    @IBAction func opcionD(_ sender: UIButton) {
        //Una vez presionado el boton, se desactiva
        self.opa.isEnabled = false
        self.opb.isEnabled = false
        self.opc.isEnabled = false
        self.opd.isEnabled = false
        
        //Si se escoje la posicion 0 del arreglo, la respuesta es correcta
        if self.categorie == 1 {
            
            if sender.currentTitle == self.quiz.opcionesPerro()[0] {
                self.correctoIncorrecto.text = "¡CORRECTO!" //Label correcto
                self.correctoIncorrecto.textColor = UIColor.green //Color verde label
                score += 1 //Score se incrementa
                self.puntuacion.text = String(score) //Ponemos score en el label
                self.puntuacion.textColor = UIColor.green //label de score color verde
                
                //Ponemos el texto del boton verde si la opcion es correcta, rojo si es incorrects
                self.opa.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opb.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opc.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opd.setTitleColor(UIColor.green, for: UIControl.State.normal)
            }
            
            else { //Si no, es incorrecto
                self.correctoIncorrecto.text = "INCORRECTO"//Label incorrecto
                self.correctoIncorrecto.textColor = UIColor.red // Label color rojo
                error += 1 // Error se incrementa
                self.Errores.text = String(error) //Ponemos numero de errores en el label
                self.Errores.textColor = UIColor.red // Label rojo de errores
            }
        }
        
        else if self.categorie == 2 {
            if sender.currentTitle == self.quiz.opcionesSport()[0] {
                self.correctoIncorrecto.text = "¡CORRECTO!" //Label correcto
                self.correctoIncorrecto.textColor = UIColor.green //Color verde label
                score += 1 //Score se incrementa
                self.puntuacion.text = String(score) //Ponemos score en el label
                self.puntuacion.textColor = UIColor.green //label de score color verde
                
                //Ponemos el texto del boton verde si la opcion es correcta, rojo si es incorrects
                self.opa.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opb.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opc.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opd.setTitleColor(UIColor.green, for: UIControl.State.normal)
            }
                
            else { //Si no, es incorrecto
                self.correctoIncorrecto.text = "INCORRECTO"//Label incorrecto
                self.correctoIncorrecto.textColor = UIColor.red // Label color rojo
                error += 1 // Error se incrementa
                self.Errores.text = String(error) //Ponemos numero de errores en el label
                self.Errores.textColor = UIColor.red // Label rojo de errores
            }
        }
        
        else if self.categorie == 3 {
            if sender.currentTitle == self.quiz.opcionesMetal()[0] {
                self.correctoIncorrecto.text = "¡CORRECTO!" //Label correcto
                self.correctoIncorrecto.textColor = UIColor.green //Color verde label
                score += 1 //Score se incrementa
                self.puntuacion.text = String(score) //Ponemos score en el label
                self.puntuacion.textColor = UIColor.green //label de score color verde
                
                //Ponemos el texto del boton verde si la opcion es correcta, rojo si es incorrects
                self.opa.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opb.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opc.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opd.setTitleColor(UIColor.green, for: UIControl.State.normal)
            }
                
            else { //Si no, es incorrecto
                self.correctoIncorrecto.text = "INCORRECTO"//Label incorrecto
                self.correctoIncorrecto.textColor = UIColor.red // Label color rojo
                error += 1 // Error se incrementa
                self.Errores.text = String(error) //Ponemos numero de errores en el label
                self.Errores.textColor = UIColor.red // Label rojo de errores
            }
        }
        
        else if self.categorie == 4 {
            if sender.currentTitle == self.quiz.opcionesTec()[0] {
                self.correctoIncorrecto.text = "¡CORRECTO!" //Label correcto
                self.correctoIncorrecto.textColor = UIColor.green //Color verde label
                score += 1 //Score se incrementa
                self.puntuacion.text = String(score) //Ponemos score en el label
                self.puntuacion.textColor = UIColor.green //label de score color verde
                
                //Ponemos el texto del boton verde si la opcion es correcta, rojo si es incorrects
                self.opa.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opb.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opc.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opd.setTitleColor(UIColor.green, for: UIControl.State.normal)
            }
                
            else { //Si no, es incorrecto
                self.correctoIncorrecto.text = "INCORRECTO"//Label incorrecto
                self.correctoIncorrecto.textColor = UIColor.red // Label color rojo
                error += 1 // Error se incrementa
                self.Errores.text = String(error) //Ponemos numero de errores en el label
                self.Errores.textColor = UIColor.red // Label rojo de errores
            }
        }
        
        else if self.categorie == 5 {
            if sender.currentTitle == self.quiz.opcionesPeli()[0] {
                self.correctoIncorrecto.text = "¡CORRECTO!" //Label correcto
                self.correctoIncorrecto.textColor = UIColor.green //Color verde label
                score += 1 //Score se incrementa
                self.puntuacion.text = String(score) //Ponemos score en el label
                self.puntuacion.textColor = UIColor.green //label de score color verde
                
                //Ponemos el texto del boton verde si la opcion es correcta, rojo si es incorrects
                self.opa.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opb.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opc.setTitleColor(UIColor.red, for: UIControl.State.normal)
                self.opd.setTitleColor(UIColor.green, for: UIControl.State.normal)
            }
                
            else { //Si no, es incorrecto
                self.correctoIncorrecto.text = "INCORRECTO"//Label incorrecto
                self.correctoIncorrecto.textColor = UIColor.red // Label color rojo
                error += 1 // Error se incrementa
                self.Errores.text = String(error) //Ponemos numero de errores en el label
                self.Errores.textColor = UIColor.red // Label rojo de errores
            }
        }
    }
    
    
    //Boton para reiniciar el marcador
    @IBAction func reset() {
        //Ponemos score en ceros
        score = 0
        error = 0
        
        
        //Activamos todos los botones
        self.opa.isEnabled = true
        self.opb.isEnabled = true
        self.opc.isEnabled = true
        self.opd.isEnabled = true
        
        self.puntuacion.text = String(score) //Ponemos score en el label
        self.Errores.text = String(error) //Ponemos numero de errores en el label
    }
    
    var categor = ""
    var categorie = 0
    
    //Cuando se presiona el botón perro
    @IBAction func bPerro(_ sender: UIButton) {
        //cambiamos label al nombre de la categoria
        self.labelCategoria.text = "Perritos"
         categorie = 1
        self.categor = "Perritos"
        //cualCategoria()
    }
    
    //Cuando se presiona el botón deportes
    @IBAction func bDeportes(_ sender: UIButton) {
        //cambiamos label al nombre de la categoria
        self.labelCategoria.text = "Deportes"
        categorie = 2
        self.categor = "Deportes"
        //cualCategoria()
    }
    
    //Cuando se presiona el botón metal
    @IBAction func bMetal(_ sender: UIButton) {
        //cambiamos label al nombre de la categoria
        self.labelCategoria.text = "Metal"
        categorie = 3
        self.categor = "Metal"
        // cualCategoria()
    }
    
    //Cuando se presiona el botón tecnología
    @IBAction func bTec(_ sender: UIButton) {
        //cambiamos label al nombre de la categoria
        self.labelCategoria.text = "Tecnología"
        categorie = 4
        self.categor = "Tecnología"
        // cualCategoria()
    }
    
    //Cuando se presiona el botón películas
    @IBAction func bPelis(_ sender: UIButton) {
        //cambiamos label al nombre de la categoria
        self.labelCategoria.text = "Películas"
        categorie = 5
        self.categor = "Películas"
        // cualCategoria()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

