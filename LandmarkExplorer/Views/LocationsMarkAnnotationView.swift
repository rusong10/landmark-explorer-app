//
//  LocationsMarkAnnotationView.swift
//  LandmarkExplorer
//
//  Created by Ru Song on 05/02/2025.
//

import SwiftUI

struct LocationsMarkAnnotationView: View {
    let accentColor = Color("AccentColor")

    var body: some View {
        VStack(spacing: 0) {
            Image(systemName: "map.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .font(.headline)
                .foregroundStyle(.white)
                .padding(6)
                .background(accentColor)
                .clipShape(Circle())
            
            Image(systemName: "triangle.fill")
                .resizable()
                .scaledToFit()
                .foregroundStyle(accentColor)
                .frame(width: 10, height: 10)
                .rotationEffect(Angle(degrees: 180))
                .offset(y: -3)
        }
    }
}

#Preview {
    LocationsMarkAnnotationView()
}
