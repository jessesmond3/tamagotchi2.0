//
//  ContentView.swift
//  claseTamagochi
//
//  Created by alumno on 09-09-26.
//

import SwiftUI

struct PantallaInicial: View {
    @State var controlador_tamagochi: ControladorGeneral =
    ControladorGeneral()
    
    @State var nombre_nuevo = ""
    
        var body: some View {
            Text("Su nombre: \(controlador_tamagotchi.tamagotchi.nombre)")
            
            Text("Esta vivo: \(controlador_tamagotchi.tamagotchi.estas_vivo)")
            
            TextField("hola", text:
                        $controlador_tamagotchi.tamagotchi.nombre)
            Text(“Hambre actual: \(controlador_tamagotchi.tamagotchi.hambre)”)
            Text(“Cansancio: \(controlador_tamagotchi.tamagotchi.cansancio)”)
            Text(“Limpio: \(controlador_tamagotchi.tamagotchi.limpio)”)
            Text(“Edad: \(controlador_tamagotchi.tamagotchi.edad)”)
            
            Button("Cambiar nombre") {
                controlador_tamagotchi.cambiar_nombre("Se pulso este boton")
            }
            
            HStack{
                Button("Dale con la pala"){
                    controlador_tamagotchi.matar()
                }
                
                Spacer()
                
                Button("Resucitar"){
                    
                }
                
                Button ("Actualiza tamagotchi"){
                    controlador_tamagotchi.actualizar_medidores()
                }
                
                Button("Alimentar"){
                    controlador_tamagotchi.alimentar()
                }
            }
        }

#Preview {
    PantallaInicial()
        .environment(ControladorGeneral())
}
