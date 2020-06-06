//
//  UnitOfSpeed.swift
//  Velociraptor
//
//  Created by Vegard Skui on 06/06/2020.
//  Copyright © 2020 Vegard Skui. All rights reserved.
//

enum UnitOfSpeed {
    case mps
    case kmh
    case kn
}

extension UnitOfSpeed: CaseIterable {
    mutating func next() {
        let allCases = Self.allCases
        let currentIndex = allCases.firstIndex(of: self)!
        self = allCases[(currentIndex + 1) % allCases.count]
    }
}

extension UnitOfSpeed: CustomStringConvertible {
    fileprivate var valueAsString: String {
        switch self {
            case .mps:
                return "m/s"
            case .kmh:
                return "km/h"
            case .kn:
                return "knots"
        }
    }

    var description: String {
        return valueAsString
    }
}
