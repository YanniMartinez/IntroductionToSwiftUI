//
//  CircleImage.swift
//  LandMarks
//
//  Created by MacBook 26 on 24/03/23.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .clipShape(Circle())//La hacemos circulo
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }//Agregando shape
            .shadow(radius: 5)//Agregando sombre
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image:Image("turtlerock"))
    }
}
