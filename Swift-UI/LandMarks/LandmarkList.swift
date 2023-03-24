//
//  LandmarkList.swift
//  LandMarks
//
//  Created by MacBook 26 on 24/03/23.
//
/**En esta vista crearemos el simil al tableViewController*/
import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            //Si tenemos identifiable podemos omitir el id: \.id
            List(landmarks, id: \.id){landmark in
                LandmarkRow(landmark: landmark)//Genera vista de forma dinamica
            }.navigationTitle("Landmarks")
            /*List{
                LandmarkRow(landmark: landmarks[0])
                LandmarkRow(landmark: landmarks[1])
                LandmarkRow(landmark: landmarks[2])
            }*/
        }
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
