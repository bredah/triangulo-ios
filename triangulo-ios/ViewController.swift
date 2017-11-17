//
//  ViewController.swift
//  triangulo-ios
//
//  Created by Henrique Breda on 8/26/16.
//  Copyright © 2016 H Breda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    // Elementos
    @IBOutlet weak var textLadoA: UITextField!
    @IBOutlet weak var textLadoB: UITextField!
    @IBOutlet weak var textLadoC: UITextField!
    @IBOutlet weak var textMensagemValidacao: UITextView!
    // Eventos
    
    @IBAction func touchValidar(sender: UIButton) {
        var strMensagem :String = ""
        
        let strLadoA :String = textLadoA.text!
        let strLadoB :String = textLadoB.text!
        let strLadoC :String = textLadoC.text!
        
        if Regex.init("\\D").test(input: strLadoA)
            || strLadoA.isEmpty
            || Int(strLadoA) < 0
            || Regex.init("\\D").test(strLadoB)
            || strLadoB.isEmpty
            || Int(strLadoB) < 0
            || Regex.init("\\D").test(strLadoC)
            || strLadoC.isEmpty
            || Int(strLadoC) < 0{
            strMensagem = "Somente digitos números inteiros e maiores que '0' são aceitos"
        }else{ // Verifica o tipo do triângulo
            if (Int(strLadoA) == Int(strLadoB) && Int(strLadoB) == Int(strLadoC)) {
                strMensagem = "Triângulo Equilátero! 3 lados iguais."
            } else if (Int(strLadoA) == Int(strLadoB) || Int(strLadoA) == Int(strLadoC) || Int(strLadoB) == Int(strLadoC)) {
                strMensagem = "Triângulo Isósceles! 2 lados iguais."
            } else {
                strMensagem = "Triângulo Escaleno! Nenhum lado igual."
            }
        }
        textMensagemValidacao.text = strMensagem
    }
    
    @IBAction func touchLimpar(sender: AnyObject) {
        textLadoA.text = ""
        textLadoB.text = ""
        textLadoC.text = ""
        textMensagemValidacao.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

