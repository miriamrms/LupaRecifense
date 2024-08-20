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
    
    let tagPlace: Tag
    
    //Identifiable
    var id: String{
        name + cityName
    }
    
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
    
}

struct Tag{
    let tagName: String
    let tagImage: String
    let tagColor: String
}

struct TagToFilter{
    let tagInformation: Tag
    var showOnMap: Bool
}

enum TagPlaces{
    case cafe
    case parque_pracas
    case museus_centros_historicos
    case pontos_turisticos
    case restaurante
    case bares_baladas
}

func getTagPlace(tg: TagPlaces)->Tag{
    switch(tg){
    case .cafe:
        return Tag(tagName: "Cafés", tagImage: "cafe", tagColor: "cafeColor")
    case .parque_pracas:
        return Tag(tagName: "Parques e Praças", tagImage: "parques_pracas", tagColor: "parqueColor")
    case .museus_centros_historicos:
        return Tag(tagName: "Museus e Cultura", tagImage: "museus_centros_historicos", tagColor: "museuColor")
    case .pontos_turisticos:
        return Tag(tagName: "Pontos Turísticos", tagImage: "pontos_turisticos", tagColor: "turisticoColor")
    case .restaurante:
        return Tag(tagName: "Restaurantes", tagImage: "restaurante", tagColor: "restauranteColor")
    case .bares_baladas:
        return Tag(tagName: "Bares de Baladas", tagImage: "bares_baladas", tagColor: "baresColor")
    }
}
