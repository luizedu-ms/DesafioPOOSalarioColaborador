//
//  Pessoa.swift
//  Desafio POO n1
//
//  Created by Luiz Mendes Silva on 22/02/22.
//

import Foundation


class Pessoa{
    var nome: String = ""
    var cargo: String = ""
    var salario: Double = 0.0
    var salarioComDesconto: Double = 0.0

    
    func calcularDesconto() -> Double{
        if cargo == "Dev" || cargo == "Desenvolvedor"{
            if salario > 3000{
                salarioComDesconto = salario - ((salario * 20)/100)
            } else {
                salarioComDesconto = salario - ((salario * 10)/100)
            }
            
        }
        if cargo == "DBA" || cargo == "Tester" || cargo == "testeadores"{
            if salario > 2500{
                salarioComDesconto = salario - ((salario * 25)/100)
            } else {
                salarioComDesconto = salario - ((salario * 15)/100)
            }
            
        }
        if cargo == "Gerente" || cargo == "Manager"{
            if salario > 7000{
                salarioComDesconto = salario - ((salario * 23)/100)
            } else {
                salarioComDesconto = salario - ((salario * 18)/100)
            }
            
        }
        return salarioComDesconto
    }

}
    
    
    
    
    
    
    
    

