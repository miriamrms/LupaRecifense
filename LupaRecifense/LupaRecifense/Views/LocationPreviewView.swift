//
//  LocationPreviewView.swift
//  LupaRecifense
//
//  Created by Miriam Mendes on 17/08/24.
//

import SwiftUI

struct LocationPreviewView: View {
    @EnvironmentObject private var vm: LocationsViewModel
    let location: Location
    var body: some View {
//        HStack(alignment: .bottom, spacing: 0){
//            VStack(alignment: .leading, spacing: 16.0){
//                imageSection
//                titleSection
//            }
//            VStack(spacing: 8){
//                learnMoreButton
//                nextButton
//            }
//        }
//        .padding(20)
//        .background(RoundedRectangle(cornerRadius: 10)
//            .fill(.ultraThinMaterial)
//            .offset(y: 50))
//        .cornerRadius(10)
    
        VStack(alignment: .leading){
            HStack(spacing: 16.0){
                imageSection
                titleSection
                    .padding(.top, 36)
            }
            .padding(.bottom,12)
            HStack(spacing: 16.0){
                learnMoreButton
                nextButton
                Spacer()
                favoriteButton
            }
        }
        .padding(20)
        .background(RoundedRectangle(cornerRadius: 10)
            .fill(.ultraThinMaterial)
            .offset(y: 50))
        .cornerRadius(10)
        
    }
}

#Preview {
    
    ZStack {
        Color.green.ignoresSafeArea()
        LocationPreviewView(location: LocationsDataService.locations.first!)
            .padding()
    }
    .environmentObject(LocationsViewModel())
}

extension LocationPreviewView{
    
    private var imageSection: some View{
        ZStack{
            if let imageName = location.imageNames.first{
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
            }
        }
        .padding(6)
        .background(Color.white)
        .cornerRadius(10)
    }
    
    private var titleSection: some View{
        VStack(alignment: .leading, spacing: 8){
            Text(location.name)
                .font(.body)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
            Text("\(location.tagPlace.tagName) | \(location.cityName)")
                .font(.subheadline)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
    }
    
    private var learnMoreButton: some View{
        Button{
            
        } label: {
            Text("Saiba Mais")
                .font(.headline)
                .frame(width: 90, height: 30)
        }
        .buttonStyle(.borderedProminent)
        .accentColor(Color(location.tagPlace.tagColor))
        
    }
    
    private var nextButton: some View{
        Button{
            vm.nextButtonPressed()
        } label: {
            Text("Próximo")
                .font(.headline)
                .frame(width: 90, height: 30)
                .foregroundColor(Color(location.tagPlace.tagColor))
        }
        .buttonStyle(.bordered)
    }
    
    private var favoriteButton: some View{
        Button{
            
        } label:{
            Image(systemName: "heart")
                .foregroundColor(.black)
                .font(.system(size: 20))
        }
    }
    
}
