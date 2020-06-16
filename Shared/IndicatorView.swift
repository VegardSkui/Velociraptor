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

    var speed: String {
        // A negative speed value indicates an invalid speed
        if locationManager.location.speed < 0 {
            return "Searching"
        }

        return String(
            format: "%.1f",
            appState.unitOfSpeed.convert(speed: locationManager.location.speed)
        )
    }

    @ViewBuilder
    var body: some View {
        VStack {
            Text(speed)
                .font(.largeTitle)
            Text(appState.unitOfSpeed.symbol)
        }.onTapGesture {
            self.appState.unitOfSpeed.next()
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
