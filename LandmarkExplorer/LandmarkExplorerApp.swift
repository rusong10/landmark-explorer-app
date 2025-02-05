//
//  LandmarkExplorerApp.swift
//  LandmarkExplorer
//
//  Created by Ru Song on 04/02/2025.
//

import SwiftUI

@main
struct LandmarkExplorerApp: App {
    
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
