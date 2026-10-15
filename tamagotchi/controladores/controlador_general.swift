//
//  controlador_general.swift
//  claseTamagochi
//
//  Created by alumno on 09-09-26.
//
import Foundation

@Observable
class ControladorGeneral{
    var tamagotchi: Tamagochi
    
    init(tamagotchi_a_cargar: Tamagochi? = nil){
        if let tamagotchi_a_cargar = tamagotchi_a_cargar{
            self.tamagotchi = tamagochi_a_cargar
        }
        else {
            self.tamagotchi = Tamagochi(
                nombre: "Inicial", esta_viva: false,
                edad: 0, hambre: 100, cansancio: 100,
                limpio: 0, aburrido: 0
            )
        }
    }
    func cambiar_nombre(_ nombre_nuevo: String) -> Bool {
        if tamagotchi.estas_vivo{
            tamagotchi.estas_vivo = false
            return true
        }
        return false
    }
    
    Func matar() -> Bool {
    If tamagotchi.esta_vivo{
    tamagotchi.esta_vivo = false
     Return true
    }
    Return false
    }

    Func actualizar_medidores() -> Bool{
    tamagotchi.hambre += 1
    tamagotchi.aburrido += 1
    tamagotchi.cansancio += 1

    tamagotchi.limpio += 1

    return true
    }

    private fun actualizar_estado(){
        switch(estado){
            
            Case .Neutro:
            if tamagotchi.hambre > 60{
                estado = .Hambriento
            }
            
            Case .Adormilado:
            if tamagotchi.hambre > 60{
                estado = .Inanicion
            }
            
            Case .Inanicion:
            if tamagotchi.hambre > 60{
                estado = .Muerte
            }
            
        default:
            return
        }
    }
    
    func alimentar() -> Bool{
        if tamagotchi.estas_vivo{
            tamagotchi.hambre -= 20
            return true
    }
}
