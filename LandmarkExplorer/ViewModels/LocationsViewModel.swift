//
//  LocationsViewModel.swift
//  LandmarkExplorer
//
//  Created by Ru Song on 05/02/2025.
//

import Foundation
import MapKit
import SwiftUI

class LocationsViewModel: ObservableObject {
    // all loaded locations
    @Published var locations: [Location]
    
    // current location on map
    @Published var mapLocation: Location {
        didSet {
            updateCameraPosition(location: mapLocation)
        }
    }
 
    // camera position
    @Published var cameraPosition: MapCameraPosition = .region(MKCoordinateRegion())
    
    // show list of locations
    @Published var showLocationsList: Bool = false
    
    // show location detail via sheet
    @Published var sheetLocation: Location? = nil
    
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        self.updateCameraPosition(location: locations.first!)
    }
    
    private func updateCameraPosition(location: Location) {
        withAnimation(.easeInOut) {
            cameraPosition = MapCameraPosition.region(
                MKCoordinateRegion(
                    center: location.coordinates,
                    span: mapSpan)
            )
        }
    }
    
    func toggleLoactionList() {
        withAnimation(.easeInOut) {
            showLocationsList.toggle()
        }
    }
    
    func showNextLocation(location: Location) {
        withAnimation(.easeInOut) {
            mapLocation = location
            showLocationsList = false
        }
    }
    
    func nextButtonPress() {
        // get the current index
        guard let currentIndex = locations.firstIndex(where: { $0 == mapLocation}) else {
            print("Could not find current index in locations array! Shoudl never happen")
            return
        }
        
        // check if currentIndex is valid
        let nextIndex = currentIndex + 1
        guard locations.indices.contains(nextIndex) else {
            // next index is no valid
            // restart from 0
            
            guard let firstLocation = locations.first else {
                return
            }
            
            showNextLocation(location: firstLocation)
            return
        }
        
        // nextIndex is valud
        let nextLocation = locations[nextIndex]
        showNextLocation(location: nextLocation)
    }
}
