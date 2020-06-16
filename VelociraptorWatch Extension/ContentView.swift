//
//  ContentView.swift
//  VelociraptorWatch Extension
//
//  Created by Vegard Skui on 07/06/2020.
//  Copyright © 2020 Vegard Skui. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appState: AppState
    @EnvironmentObject var locationManager: LocationManager

    @ViewBuilder
    var body: some View {
        if locationManager.hasAuthorization {
            IndicatorView()
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
