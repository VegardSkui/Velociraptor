//
//  AppState.swift
//  Velociraptor
//
//  Created by Vegard Skui on 06/06/2020.
//  Copyright © 2020 Vegard Skui. All rights reserved.
//

import Foundation

class AppState: ObservableObject {
    @Published var speed: Double = 0

    private init() {}

    static let shared = AppState()
}
