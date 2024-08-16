//
//  LupaRecifenseApp.swift
//  LupaRecifense
//
//  Created by Miriam Mendes on 15/08/24.
//

import SwiftUI

@main
struct LupaRecifenseApp: App {
    @StateObject private var vm = LocationsViewModel()
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
