//
//  CLLocation+PrettyExtensionKit.swift
//  PrettyExtensionsKit
//
//  Created by Oleksii Naboichenko on 11/19/18.
//  Copyright © 2018 Oleksii Naboichenko. All rights reserved.
//

import CoreLocation

public extension CLLocation {
    
    convenience init(latitude: CLLocationDegrees, longitude: CLLocationDegrees, altitude: CLLocationDistance) {
        self.init(
            coordinate: CLLocationCoordinate2D(
                latitude: latitude,
                longitude: longitude
            ),
            altitude: altitude
        )
    }
    
    convenience init(coordinate: CLLocationCoordinate2D, altitude: CLLocationDistance) {
        self.init(
            coordinate: coordinate,
            altitude: altitude,
            horizontalAccuracy: 0,
            verticalAccuracy: 0,
            timestamp: Date()
        )
    }
}
