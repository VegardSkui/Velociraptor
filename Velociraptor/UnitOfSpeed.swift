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
                return "mps"
            case .kmh:
                return "kmh"
        }
    }

    var description: String {
        return valueAsString
    }
}
