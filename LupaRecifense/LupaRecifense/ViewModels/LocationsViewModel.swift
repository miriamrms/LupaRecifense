//
//  LocationsViewModel.swift
//  LupaRecifense
//
//  Created by Miriam Mendes on 15/08/24.
//

import Foundation
import MapKit
import SwiftUI

class LocationsViewModel: ObservableObject {
    
    //all tags
    @Published var tagsToFilter: [String : TagToFilter]
    //all loaded locations
    @Published var locations: [Location]
    //current location on map
    @Published var mapLocation: Location{
        didSet{
            updateMapRegion(location: mapLocation)
        }
    }
    //Current Region on Map
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    //let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    let mapSpan: MKCoordinateSpan
    
    init() {
        let tagsToFilter = LocationsDataService.tagsToFilter
        self.tagsToFilter = tagsToFilter
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = Location(name: "", cityName: "", coordinates: CLLocationCoordinate2D(latitude: -8.063167, longitude: -34.871143), description: "", adress: "", imageNames: [""], link: "", tagPlace: .init(tagName: "", tagImage: "", tagColor: ""))
        self.mapSpan = MKCoordinateSpan(latitudeDelta: 0.04, longitudeDelta: 0.04)
        self.updateMapRegion(location: locations.first!)
       
    }
    
    private func updateMapRegion(location: Location){
        withAnimation(.easeInOut){
            //mapRegion = MKCoordinateRegion(center: location.coordinates, span: mapSpan)
            mapRegion = MKCoordinateRegion(center: location.coordinates, span: MKCoordinateSpan(latitudeDelta: 0.04, longitudeDelta: 0.04))
        }
    }
    
    func showNextLocation(location: Location){
        withAnimation(.easeInOut){
            mapLocation = location
        }
    }
    
    func nextButtonPressed(){
        //get the current index
        guard let currentIndex = locations.firstIndex(where: {$0 == mapLocation}) else{
            print("Could not find current index in locations array! Should never happen.")
            return
        }
        
        //check if the currentIndex is valid
        let nextIndex = currentIndex + 1
        guard locations.indices.contains(nextIndex) else{
            //next index is NOT valid
            //restart from 0
            guard let firstLocation = locations.first else {return}
            showNextLocation(location: firstLocation)
            return
        }
        //Next index is valid
        let nextLocation = locations[nextIndex]
        showNextLocation(location: nextLocation)
    }
    
}
