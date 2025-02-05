//
//  LocationsView.swift
//  LandmarkExplorer
//
//  Created by Ru Song on 05/02/2025.
//

import SwiftUI
import MapKit

struct LocationsView: View {
    let maxWidthForIpad: CGFloat = 700
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        ZStack {
            mapLayer
            
            VStack(spacing: 0) {
                header
                    .padding()
                    .frame(maxWidth: maxWidthForIpad)
                Spacer()
                locationsPreviewStack
            }
        }
        .sheet(item: $vm.sheetLocation, onDismiss: nil) { location in
            LocationsDetailView(location: location)
                .presentationSizing(.page)
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}

extension LocationsView {
    
    private var header: some View {
        VStack {
            Button {
                vm.toggleLoactionList()
            } label: {
                Text(vm.mapLocation.name + ", " + vm.mapLocation.cityName)
                    .font(.title2)
                    .fontWeight(.black)
                    .foregroundStyle(.primary)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .animation(.none, value: vm.mapLocation)
                    .overlay(alignment: .leading) {
                        Image(systemName: "arrow.down")
                            .font(.headline)
                            .foregroundStyle(.primary)
                            .padding()
                            .rotationEffect(Angle(degrees: vm.showLocationsList ? 180 : 0))
                    }
            }
            
            if vm.showLocationsList {
                LocationsListView()
            }
        }
        .background(.thickMaterial)
        .clipShape(.rect(cornerRadius: 10))
        .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 15)
    }
    
    private var mapLayer: some View {
        Map(position: $vm.cameraPosition) {
            ForEach(vm.locations) { location in
                Annotation(location.name, coordinate: location.coordinates, anchor: .bottom) {
                    LocationsMarkAnnotationView()
                        .scaleEffect(vm.mapLocation == location ? 1 : 0.7)
                        .shadow(radius: 10)
                        .onTapGesture {
                            vm.showNextLocation(location: location)
                        }
                }
            }
        }
    }
    
    private var locationsPreviewStack: some View {
        ZStack {
            ForEach(vm.locations) { location in
                if vm.mapLocation == location {
                    LocationsPreviewView(location: location)
                        .shadow(color: Color.black.opacity(0.3), radius: 20)
                        .padding()
                        .frame(maxWidth: maxWidthForIpad)
                        .frame(maxWidth: .infinity)
                        .transition(.asymmetric(
                            insertion: .move(edge: .trailing),
                            removal: .move(edge: .leading)
                        ))
                }
            }
        }
    }
}
