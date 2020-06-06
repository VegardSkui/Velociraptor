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

    var body: some View {
        VStack {
            Text(String(format: "%.1f", model.speed))
                .font(.largeTitle)
            Text("mps")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AppState.shared)
    }
}
