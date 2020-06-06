//
//  UnitOfSpeed.swift
//  Velociraptor
//
//  Created by Vegard Skui on 06/06/2020.
//  Copyright © 2020 Vegard Skui. All rights reserved.
//

import CoreLocation

enum UnitOfSpeed {
    case mps
    case kmh
    case mph
    case kn
}

extension UnitOfSpeed {
    var symbol: String {
        switch self {
            case .mps:
                return "m/s"
            case .kmh:
                return "km/h"
            case .mph:
                return "mph"
            case .kn:
                return "knots"
        }
    }

    func convert(speed: CLLocationSpeed) -> Double {
        switch self {
            case .mps:
                return speed
            case .kmh:
                return speed * 3.6
            case .mph:
                return speed / 0.44704
            case .kn:
                return speed * 3.6 / 1.852
        }
    }
}

extension UnitOfSpeed: CaseIterable {
    mutating func next() {
        let allCases = Self.allCases
        let currentIndex = allCases.firstIndex(of: self)!
        self = allCases[(currentIndex + 1) % allCases.count]
    }
}
