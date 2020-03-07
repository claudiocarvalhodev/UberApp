//
//  MKPlacemark+Extensions.swift
//  Uber
//
//  Created by claudiocarvalho on 02/03/20.
//  Copyright © 2020 claudiocarvalho. All rights reserved.
//

import Foundation
import MapKit

extension MKPlacemark {
    var address: String? {
        get {
            guard let subThoroughfare = subThoroughfare else { return nil }
            guard let thoroughfare = thoroughfare else { return nil }
            guard let locality = locality else { return nil }
            guard let adminArea = administrativeArea else { return nil }
            
            return "\(subThoroughfare) \(thoroughfare), \(locality), \(adminArea) "
        }
    }
}
