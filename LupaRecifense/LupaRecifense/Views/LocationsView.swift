//
//  LocationsView.swift
//  LupaRecifense
//
//  Created by Miriam Mendes on 15/08/24.
//

import SwiftUI
import MapKit

struct LocationsView: View {
    //@StateObject private var vm = LocationsViewModel()
    @EnvironmentObject private var vm: LocationsViewModel
    var body: some View {
//        List{
//            ForEach(vm.locations){
//                Text($0.name)
//            }
//        }
        ZStack{
            mapLayer
                .ignoresSafeArea()
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
    
}

extension LocationsView{
    private var mapLayer: some View{
        Map(coordinateRegion: $vm.mapRegion, annotationItems: vm.locations) { location in
            MapAnnotation(coordinate: location.coordinates) {
                VStack(spacing: 0){
                    Image(location.tagPlace.tagImage)
                        .resizable()
                        .scaledToFit()
                        .scaleEffect(vm.mapLocation == location ? 1 : 0.7)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .onTapGesture {
                            vm.showNextLocation(location: location)
                        }
                }
                .frame(width: 50, height: 50)
            }
        }
    }
}
