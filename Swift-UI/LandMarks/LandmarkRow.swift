//
//  LandmarkRow.swift
//  LandMarks
//
//  Created by MacBook 26 on 24/03/23.
//
/**Aqui lo que se hara es crear una vista que muestre una lista de elmentos
 Esta vista nos ayudara dentro de nuestra lista de un table viewController**/

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50,height: 50)
            Text(landmark.name)
            Spacer()
            
            //Este lo que hara es mostrar un icono de favorito seguido de la fila del elemento
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow) //Coloca de color amarillo el elemento
                        // Solo lo colorea de amarillo si existe el icono
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarks[0]) //Le mandamos el primer elemento
    }
}
