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
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarks[0]) //Le mandamos el primer elemento
    }
}
