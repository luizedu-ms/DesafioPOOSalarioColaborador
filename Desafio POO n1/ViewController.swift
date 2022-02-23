//
//  ViewController.swift
//  Desafio POO n1
//
//  Created by Luiz Mendes Silva on 22/02/22.
//

import UIKit
class ViewController: UIViewController {

    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var cargoTextField: UITextField!
    @IBOutlet weak var salarioTextField: UITextField!
    @IBOutlet weak var resultadoLabel: UILabel!
    
    let pessoa: Pessoa = Pessoa()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func botaoCalcular(_ sender: AnyObject) {
        guard let nomeText = nomeTextField.text else{return nomeTextField.text = "Digite um nome antes de calcular"}
        guard let cargoText = cargoTextField.text else {return cargoTextField.text = "Digite um cargo antes de calcular"}
        guard let salarioDouble = Double(salarioTextField.text ?? "") else {return salarioTextField.text = "Digite um salario antes de calcular"}
        pessoa.nome = nomeText
        pessoa.cargo = cargoText
        pessoa.salario = salarioDouble
        
        resultadoLabel.text = "Nome do(a) Colaborador(a) é: \(pessoa.nome)\nCargo do(a) Colaborador(a): \(pessoa.cargo)\nSalario bruto do(a) Colaborador(a): R$\(pessoa.salario)\nSalario com desconto: R$\(pessoa.calcularDesconto())"
    }
    
}

