//
//  LandmarkList.swift
//  LandMarks
//
//  Created by MacBook 26 on 24/03/23.
//
/**En esta vista crearemos el simil al tableViewController*/
import SwiftUI

struct LandmarkList: View {
    
    //Este es un elemento necesario debido a que estamos haciendo uso de estados y uso de cada uno de los elementos que tenemos en la lista
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    /*var body: some View {
        NavigationView{*/
            
            //Si tenemos identifiable podemos omitir el id: \.id
            //List(landmarks, id: \.id){landmark in
            /*List {
                ForEach(filteredLandmarks) {
                    landmark in NavigationLink
                {
                                
                    LandmarkDetail(landmark:landmark)
                } label:{
                    LandmarkRow(landmark: landmark)//Genera vista de forma dinamica
                }
            }.navigationTitle("Landmarks")*/
            /*List{
                LandmarkRow(landmark: landmarks[0])
                LandmarkRow(landmark: landmarks[1])
                LandmarkRow(landmark: landmarks[2])
            }*/
            
            /**
             
             var filteredLandmarks: [Landmark] {
                     landmarks.filter { landmark in
                         (!showFavoritesOnly || landmark.isFavorite)
                     }
                 }
             
        }*/
        
    
        var body: some View {
            NavigationView {
                List {
                    Toggle(isOn: $showFavoritesOnly) {
                        Text("Favorites only")
                    }

                    ForEach(filteredLandmarks) { landmark in
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
                .navigationTitle("Landmarks")
            }
        }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        //Declaracion de arreglo con nombre de dispositivos en los que queremos ejecutar el programa
        ForEach( ["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) {
            
            deviceName in LandmarkList()
                        .previewDevice(PreviewDevice(rawValue: deviceName))
                        .previewDisplayName(deviceName)
        }
        //LandmarkList()
    }
}
