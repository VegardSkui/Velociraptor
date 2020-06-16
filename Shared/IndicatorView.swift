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

    @ViewBuilder
    var body: some View {
        VStack {
            Text(String(format: "%.1f", appState.unitOfSpeed.convert(speed: locationManager.location.speed)))
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
