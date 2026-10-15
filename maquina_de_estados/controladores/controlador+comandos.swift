//
//  controlador+comandos.swift
//  maquina_de_estados
//
//  Created by Macbook on 12/10/26.
//
import ARKit

//protocol Comando {}

//protocol ProcesadorComandos{
//   func procesar_comando(_ comando: Comando) -> Bool
//}

enum ComandosTamagotchi: Comando{
    case darle_un_dulce
    case darle_un_sape
    case darle_brocolis
}

extension ControladorGeneral{
    func procesar_comando(_ comando: Comando) -> Bool{
        guard let comando = comando as? ComandosTamagotchi else{
            return false
        }
        
        switch(comando){
        case .darle_un_dulce:
            entretener()
            alimentar()
        
        case .darle_un_sape:
            adormilar()
            enojar()
            
        case .darle_brocolis:
            alimentar()
            enojar()
        }
        return true
    }
}
