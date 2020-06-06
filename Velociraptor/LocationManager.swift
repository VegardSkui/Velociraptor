//
//  LocationManager.swift
//  Velociraptor
//
//  Created by Vegard Skui on 06/06/2020.
//  Copyright © 2020 Vegard Skui. All rights reserved.
//

import CoreLocation

class LocationManager: NSObject, ObservableObject {
    @Published var location: CLLocation = CLLocation()

    private let locationManager = CLLocationManager()

    override init() {
        super.init()

        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}

extension LocationManager: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        print("Location authorization status changed, new status: \(status.rawValue)")
    }

    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.last!
    }
}
