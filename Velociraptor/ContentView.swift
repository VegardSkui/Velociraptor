//
//  ContentView.swift
//  Velociraptor
//
//  Created by Vegard Skui on 03/06/2020.
//  Copyright © 2020 Vegard Skui. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appState: AppState
    @EnvironmentObject var locationManager: LocationManager

    @ViewBuilder
    var body: some View {
        if locationManager.hasAuthorization {
            VStack {
                Text(String(format: "%.1f", appState.unitOfSpeed.convert(speed: locationManager.location.speed)))
                    .font(.largeTitle)
                Text(appState.unitOfSpeed.symbol)
            }.onTapGesture {
                self.appState.unitOfSpeed.next()
            }
        } else {
            Text("The app needs access to your location to determine your current speed")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AppState())
            .environmentObject(LocationManager())
    }
}
