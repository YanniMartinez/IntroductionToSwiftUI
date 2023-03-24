//
//  LandmarkDetail.swift
//  LandMarks
//
//  Created by MacBook 26 on 24/03/23.
//
/**Aqui lo que haremos es agarrar el contenido de contentView del viewStack**/
import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack{
            //ScrollView es una vista
            MapView()
                .ignoresSafeArea(edges: .top)//Ignora el area de seguridad
                .frame(height: 300)
            CircleImage()
                .offset(y:-125)
                .padding(.bottom,-130)
            
            VStack(alignment:.leading){//Puede heredar de vistas padre en este caso la alineacion
                
                
                Text("Turtle Rock")
                    .font(.title)
                    .foregroundColor(.green)
                HStack{
                    Text("Joshua Tree National Park")
                        
                    Spacer()
                    Text("California").font(.subheadline)
                }.font(.subheadline) //Esto haria que se propage entre todos los elementos contenidos en la horizontal
                    .foregroundColor(.secondary) //Aclaro un poco la letra del subtitulo
                
                Divider()// Genera una linea
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Description About Turtle Rock")
                
            }.padding(40)//Afecta toda la vista y lo que hay dentro de ella
            Spacer()//Empuja la vista hacia arriba
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
