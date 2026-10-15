//
//  mascota_estado_pantalla.swift
//  maquina_de_estados
//
//  Created by Macbook on 12/10/26.
//

import SwiftUI

struct MascotaEstados: View {
    @Environment(ControladorGeneral.self) var mascota
    
    var body: some View{
        switch(mascota.estado){
        case .Neutro:
            Rectangle()
                .foregroundStyle(Color.gray)
        case .Hambriento:
            Rectangle()
                .foregroundStyle(Color.orange)
        case .Inanicion:
            Rectangle()
                .foregroundStyle(Color.red)
        case . Muerte:
            Text("QUE MAS QUIERES SI ESTA MUERTP")
                .fontWidth(.expanded)
                .fontWeight(.heavy)
            
        default:
            Text("NO sé qué pasó")
        }
    }
}

#Preview {
    MascotaEstados()
        .environment(ControladorGeneral())
}
