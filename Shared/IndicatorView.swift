//
//  IndicatorView.swift
//  Velociraptor
//
//  Created by Vegard Skui on 16/06/2020.
//  Copyright © 2020 Vegard Skui. All rights reserved.
//

import SwiftUI

struct IndicatorView: View {
    @EnvironmentObject var appState: AppState
    @EnvironmentObject var locationManager: LocationManager

    var hasValidSpeed: Bool {
        // A negative speed value indicates an invalid speed
        locationManager.location.speed >= 0
    }

    var speed: String {
        String(
            format: "%.1f",
            appState.unitOfSpeed.convert(speed: locationManager.location.speed)
        )
    }

    @ViewBuilder
    var body: some View {
        if hasValidSpeed {
            VStack {
                Text(speed)
                    .font(.largeTitle)
                Text(appState.unitOfSpeed.symbol)
            }.onTapGesture {
                self.appState.unitOfSpeed.next()
            }
        } else {
            Text("Searching")
                .font(.largeTitle)
        }
    }
}

struct IndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        IndicatorView()
            .environmentObject(AppState())
            .environmentObject(LocationManager())
    }
}
