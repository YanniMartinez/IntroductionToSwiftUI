//
//  ModelData.swift
//  LandMarks
//
//  Created by MacBook 26 on 24/03/23.
//

import Foundation
/**Lectura de datos del JSON a la estructura creada anteriormente**/
var landmarks: [Landmark] = load("landmarkData.json")//Lee el archivo
//Creando funcion que recibe genericos de swift, queson templates de algo que queremos que se comporte como yo quisiera en un futurom permite poner diferentes modelos que cumplan una serie de condiciones
//_parametro que no tenga nombre
//Decimos que son opcionales por los pico parentesis que pusimos despues de Load
func load<T: Decodable>(_ filename: String) -> T{
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("Could not find \(filename)")
    }
    
    do{
        data = try Data(contentsOf: file)
    }catch{
        fatalError("Could not load \(filename)")
    }
    
    do{//Intenta decodioficar el contenido a un modelo
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        
    }
}
