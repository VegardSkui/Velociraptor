//
//  VelociraptorApp.swift
//  Velociraptor
//
//  Created by Vegard Skui on 28/09/2020.
//  Copyright © 2020 Vegard Skui. All rights reserved.
//

import SwiftUI

@main
struct VelociraptorApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(AppState())
                .environmentObject(LocationManager())
        }
    }
}
