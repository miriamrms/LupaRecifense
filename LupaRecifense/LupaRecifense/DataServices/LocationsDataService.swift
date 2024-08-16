//
//  LocationsDataService.swift
//  LupaRecifense
//
//  Created by Miriam Mendes on 15/08/24.
//

import Foundation
import MapKit

class LocationsDataService{
    static let locations: [Location] = [
        //Pontos Turisticos
        Location(name: "Marco Zero", cityName: "Recife", coordinates: CLLocationCoordinate2D(latitude: -8.063167, longitude: -34.871143), description: "", imageNames: [""], link: "", tagPlace: getTagPlace(tg: .pontos_turisticos)),
        
        //Museus e Centros Culturais
        Location(
            name: "Instituto Ricardo Brennand",
            cityName: "Recife",
            coordinates: CLLocationCoordinate2D(latitude: -8.065678, longitude: -34.964536),
            description: "O Instituto Ricardo Brennand, também conhecido como Castelo de Brennand, é uma instituição cultural brasileira sem fins lucrativos localizada na cidade do Recife, capital do estado de Pernambuco. Foi eleito o melhor museu da América do Sul pelo site de viagens TripAdvisor.",
            imageNames: [""],
            link: "http://www.institutoricardobrennand.org.br", tagPlace: getTagPlace(tg: .museus_centros_historicos)),
        
        //Parques e Praças
        Location(name: "Parque das Graças", cityName: "Recife", coordinates: CLLocationCoordinate2D(latitude: -8.045994 , longitude: -34.902828), description: "", imageNames: [""], link: "", tagPlace: getTagPlace(tg: .parque_pracas))
    
    ]
}
