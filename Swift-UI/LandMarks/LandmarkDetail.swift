//
//  LandmarkDetail.swift
//  LandMarks
//
//  Created by MacBook 26 on 24/03/23.
//
/**Aqui lo que haremos es agarrar el contenido de contentView del viewStack**/
import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
        
        
        var body: some View {
            ScrollView{
                VStack{
                    //ScrollView es una vista
                    MapView(coordinate: landmark.locationCoordinate)
                        .ignoresSafeArea(edges: .top)//Ignora el area de seguridad
                        .frame(height: 300)
                    CircleImage(image: landmark.image)
                        .offset(y:-125)
                        .padding(.bottom,-130)
                    
                    VStack(alignment:.leading){//Puede heredar de vistas padre en este caso la alineacion
                        
                        
                        Text( landmark.name)
                            .font(.title)
                            .foregroundColor(.green)
                        HStack{
                            Text(landmark.park)
                            
                            Spacer()
                            Text(landmark.state).font(.subheadline)
                        }.font(.subheadline) //Esto haria que se propage entre todos los elementos contenidos en la horizontal
                            .foregroundColor(.secondary) //Aclaro un poco la letra del subtitulo
                        
                        Divider()// Genera una linea
                        Text(landmark.name)
                            .font(.title2)
                        Text(landmark.description)
                        
                    }.padding(40)//Afecta toda la vista y lo que hay dentro de ella
                    Spacer()//Empuja la vista hacia arriba
                }
            }.navigationTitle(landmark.name)
                .navigationBarTitleDisplayMode(.inline)
        }
        
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
