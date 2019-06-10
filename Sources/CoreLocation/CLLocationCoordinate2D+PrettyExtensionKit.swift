//
//  CLLocationCoordinate2D+PrettyExtensionKit.swift
//  PrettyExtensionsKit
//
//  Created by Oleksii Naboichenko on 11/19/18.
//  Copyright © 2018 Oleksii Naboichenko. All rights reserved.
//

import CoreLocation

public extension CLLocationCoordinate2D {
    
    // Distance in meteres
    func prettyDistance(toCoordinate: CLLocationCoordinate2D) -> CLLocationDistance {
        let fromLocation = CLLocation(latitude: latitude, longitude: longitude)
        let toLocation = CLLocation(latitude: toCoordinate.latitude, longitude: toCoordinate.longitude)
        return fromLocation.distance(from: toLocation)
    }
}
