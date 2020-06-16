//
//  AppState.swift
//  Velociraptor
//
//  Created by Vegard Skui on 06/06/2020.
//  Copyright © 2020 Vegard Skui. All rights reserved.
//

import Foundation

class AppState: ObservableObject {
    @Published var unitOfSpeed: UnitOfSpeed = .mps {
        didSet {
            UserDefaults.standard.set(unitOfSpeed.rawValue, forKey: "UnitOfSpeed")
        }
    }

    init() {
        retrieveUnitOfSpeed()
    }

    private func retrieveUnitOfSpeed() {
        guard let storedValue = UserDefaults.standard.string(forKey: "UnitOfSpeed") else {
            print("No unit of speed stored in user defaults")
            return
        }

        guard let unitOfSpeed = UnitOfSpeed(rawValue: storedValue) else {
            print("Stored unit of speed is invalid")
            return
        }

        self.unitOfSpeed = unitOfSpeed
    }
}
