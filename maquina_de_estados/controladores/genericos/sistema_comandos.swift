//
//  sistema_comandos.swift
//  maquina_de_estados
//
//  Created by Macbook on 12/10/26.
//

protocol Comando {}

protocol ProcesadorComandos{
    func procesar_comando(_ comando: Comando) -> Bool
}
