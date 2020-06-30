//
//  ContentView.swift
//  Velociraptor
//
//  Created by Vegard Skui on 30/06/2020.
//  Copyright © 2020 Vegard Skui. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var locationManager: LocationManager

    @ViewBuilder
    var body: some View {
        if locationManager.hasAuthorization {
            IndicatorView()
        } else {
            NoLocationAccessView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
