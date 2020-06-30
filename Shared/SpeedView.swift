//
//  SpeedView.swift
//  Velociraptor
//
//  Created by Vegard Skui on 30/06/2020.
//  Copyright © 2020 Vegard Skui. All rights reserved.
//

import CoreLocation
import SwiftUI

struct SpeedView: View {
    let speed: CLLocationSpeed
    let unit: UnitOfSpeed

    /// The speed converted to the user's preferred unit with one decimal.
    private var convertedSpeed: String {
        String(format: "%.1f", unit.convert(speed: speed))
    }

    var body: some View {
        VStack {
            Text(convertedSpeed)
                .font(.largeTitle)

            Text(unit.symbol)
        }
    }
}

struct SpeedView_Previews: PreviewProvider {
    static var previews: some View {
        SpeedView(speed: 20, unit: .mps)
    }
}
