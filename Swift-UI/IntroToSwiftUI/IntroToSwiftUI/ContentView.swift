//
//  ContentView.swift
//  IntroToSwiftUI
//
//  Created by MacBook 26 on 24/03/23.
//

/**
 A diferencia del storyboard vemos directamente el emulador por lo que podemos hacer es programar y tener el emulador al instante.
 
 Segunda parte: SwiftUI usa Swift pero la declaracion es un poco diferente como la variable llamada body y es ella sobre la que construiran las vistas donde estaran los elementos
 
 Cada elemento tendr[a su conteView y ContenViewPreview, el contentView lo qe hace es la renderizacion de la vista mientras que la otra llama a la ContentView.
 
 Con el codigo que escribamos no debemos preocuparnos de las constraints lo que afectaba la vista, en este caso no sera necesario pero debemos aprender otros elementos por ejemplo el texto
 **/

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            VStack{
                //Ponemos un VStack para poder ponerlo vertical
                //Texto funciona como un label pero no lo renderiza, para corregirlo hay que
                Text("Hello World").foregroundColor(.red)
                    .fontWeight(.bold)
                //Spacer() Dividira la vista en todo el espacio disponible
                //Spacer()
                
                
                //Si lo ponemos tal cual no funciona
                Text("Hello World")
                
                /**
                 para concatenar hay que comenzar apilar
                 */
            }.padding(40)
            HStack{ //Uso para stack horizontal
                Text("1")
                Spacer()
                Text("2")
                Spacer()
                Text("3")
                Spacer()
                Text("4")
            }.padding(20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/**Landmarks App
 SwiftUI**/
