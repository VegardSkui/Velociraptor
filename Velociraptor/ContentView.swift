//
//  ContentView.swift
//  Velociraptor
//
//  Created by Vegard Skui on 03/06/2020.
//  Copyright © 2020 Vegard Skui. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model: AppState

    var convertedSpeed: Double {
        switch model.unitOfSpeed {
            case .mps:
                return model.speed
            case .kmh:
                return model.speed * 3.6
            case .mph:
                return model.speed / 0.44704
            case .kn:
                return model.speed * 3.6 / 1.852
        }
    }

    var body: some View {
        VStack {
            Text(String(format: "%.1f", convertedSpeed))
                .font(.largeTitle)
            Text(model.unitOfSpeed.symbol)
        }.onTapGesture {
            self.model.unitOfSpeed.next()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AppState.shared)
    }
}
