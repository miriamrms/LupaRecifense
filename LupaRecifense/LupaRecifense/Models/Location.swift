//
//  Location.swift
//  LupaRecifense
//
//  Created by Miriam Mendes on 15/08/24.
//

import Foundation
import MapKit


struct Location: Identifiable, Equatable{
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let adress: String
    let imageNames: [String]
    let link: String
    
    let tagPlace: tag
    
    //Identifiable
    var id: String{
        name + cityName
    }
    
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
    
}

struct tag{
    let tagName: String
    let tagImage: String
}

enum tagPlaces{
    case cafe
    case parque_pracas
    case museus_centros_historicos
    case pontos_turisticos
    case restaurante
    case bares_baladas
}

func getTagPlace(tg: tagPlaces)->tag{
    switch(tg){
    case .cafe:
        return tag(tagName: "Cafés", tagImage: "cafe")
    case .parque_pracas:
        return tag(tagName: "Parques e Praças", tagImage: "parques_pracas")
    case .museus_centros_historicos:
        return tag(tagName: "Museus e Centros Históricos", tagImage: "museus_centros_historicos")
    case .pontos_turisticos:
        return tag(tagName: "Pontos Turísticos", tagImage: "pontos_turisticos")
    case .restaurante:
        return tag(tagName: "Restaurantes", tagImage: "restaurante")
    case .bares_baladas:
        return tag(tagName: "Bares de Baladas", tagImage: "bares_baladas")
    }
}
