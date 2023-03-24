//
//  Landmark.swift
//  LandMarks
//
//  Created by MacBook 26 on 24/03/23.
//

import Foundation
import SwiftUI
import CoreLocation
/**Crearemos estructura para leer los datos del JSON**/
struct Landmark: Hashable, Codable{
    //Mapeamos los atributos de los elementos
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String //Tener una imagen como propiedad
    var image: Image{
        Image(imageName)//Constructor
    }
    
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    Struct Coordinates: Hashable, Codable{
        var latitude: Double
        var longitude: Double
    }
}
