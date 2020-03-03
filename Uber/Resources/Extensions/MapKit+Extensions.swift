//
//  MapKit+Extensions.swift
//  Uber
//
//  Created by claudiocarvalho on 03/03/20.
//  Copyright © 2020 claudiocarvalho. All rights reserved.
//

import MapKit

extension MKMapView {
    func zoomToFit(annotations: [MKAnnotation]) {
        var zoomRect = MKMapRect.null
        
        annotations.forEach { (annotation) in
            let annotationPoint = MKMapPoint(annotation.coordinate)
            let pointRect = MKMapRect(x: annotationPoint.x, y:
                annotationPoint.y, width: 0.01, height: 0.01)
            
            zoomRect = zoomRect.union(pointRect)
            
            let insets = UIEdgeInsets(top: 100, left: 100, bottom: 250, right: 100)
            setVisibleMapRect(zoomRect, edgePadding: insets, animated: true)
        }
    }
}
