//
//  TagsListView.swift
//  LupaRecifense
//
//  Created by Miriam Mendes on 17/08/24.
//

import SwiftUI

struct TagsListView: View {
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    TagsListView()
        .environmentObject(LocationsViewModel())
}

extension TagsListView{
    
}
