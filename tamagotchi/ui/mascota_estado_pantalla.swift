//
//  mascota_estado_pantalla.swift
//  tamagotchi
//
//  Created by Macbook on 11/09/26.
//

import SwiftUI

struct MascotaEstado : View {
    @Environment(ControladroGeneral.self) var masctoa
    
    var body: some View{
        switch(mascota.estado){
        case . Neutro:
            Rectangle()
                .foregroundStyle(Color.gray)
        case .Hambriento:
            Rectangle()
                .foregroundStyle(Color.orange)
        case .Inanicion:
            Rectangle()
                .foregroundStyle(Color.red)
        case .Muerte:
            Text("QUE MAS QUIERES SI ESTA MUERTO")
                .fontWidth(.expanded)
                .fontWeight(.heavy)
            
        default:
            Text("No se que paso")
        }
    }
}
