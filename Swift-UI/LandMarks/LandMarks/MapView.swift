//
//  MapView.swift
//  LandMarks
//
//  Created by MacBook 26 on 24/03/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    //State se usa para vatiables que modifican la vista
    var coordinate: CLLocationCoordinate2D
    @State var region = MKCoordinateRegion(center:CLLocationCoordinate2D(latitude:34.011, longitude: -116.1666), span:MKCoordinateSpan(latitudeDelta:0.1, longitudeDelta:0.1))
    var body: some View {
        //Binding es el vinculo entre lo que desplegara el mapa y lo que mostrara el core entry
        //El $ lo que hace es vinculo entre region con la vista y la variable
        Map(coordinateRegion: $region)
            .onAppear(){
                setRegion(coordinate)
            }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D){
        region = MKCoordinateRegion(center:coordinate, span: MKCoordinateSpan( latitudeDelta:0.2, longitudeDelta:0.2))
        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude:34.011, longitude: -116.1666))
    }
}
