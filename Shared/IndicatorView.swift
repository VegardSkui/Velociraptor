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

    private var hasValidSpeed: Bool {
        // A negative speed value indicates an invalid speed
        locationManager.location.speed >= 0
    }

    @ViewBuilder
    var body: some View {
        if hasValidSpeed {
            SpeedView(
                speed: locationManager.location.speed,
                unit: appState.unitOfSpeed
            ).onTapGesture { self.appState.unitOfSpeed.next() }
        } else {
            SearchingView()
        }
    }
}
